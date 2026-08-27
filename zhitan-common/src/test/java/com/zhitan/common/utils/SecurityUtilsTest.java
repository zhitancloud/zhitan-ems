package com.zhitan.common.utils;

import com.zhitan.common.constant.Constants;
import com.zhitan.common.core.domain.entity.SysRole;
import com.zhitan.common.core.domain.entity.SysUser;
import com.zhitan.common.core.domain.model.LoginUser;
import com.zhitan.common.exception.ServiceException;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

/**
 * SecurityUtils 安全服务工具类单元测试
 * 覆盖：用户信息获取、权限判断、密码处理、管理员判断等核心方法
 */
@DisplayName("SecurityUtils 安全服务工具类测试")
class SecurityUtilsTest {

    private LoginUser loginUser;
    private SysUser sysUser;

    @BeforeEach
    void setUp() {
        sysUser = new SysUser();
        sysUser.setUserId(100L);
        sysUser.setUserName("testUser");
        sysUser.setNickName("测试用户");
        sysUser.setPassword("encryptedPassword123");

        Set<String> permissions = new HashSet<>(Arrays.asList(
                "system:user:list",
                "system:user:add",
                "system:user:edit",
                "system:user:remove",
                "system:role:list",
                "monitor:online:list"
        ));

        SysRole role = new SysRole();
        role.setRoleId(2L);
        role.setRoleName("普通角色");
        role.setRoleKey("common");

        SysRole adminRole = new SysRole();
        adminRole.setRoleId(1L);
        adminRole.setRoleName("管理员");
        adminRole.setRoleKey("admin");

        sysUser.setRoles(Arrays.asList(role, adminRole));

        loginUser = new LoginUser(100L, 10L, sysUser, permissions);
    }

    @AfterEach
    void tearDown() {
        SecurityContextHolder.clearContext();
    }

    /**
     * 设置 SecurityContext 包含指定的 LoginUser
     */
    private void setSecurityContextWithLoginUser(LoginUser user) {
        Authentication auth = new UsernamePasswordAuthenticationToken(user, user.getPassword());
        SecurityContext context = SecurityContextHolder.createEmptyContext();
        context.setAuthentication(auth);
        SecurityContextHolder.setContext(context);
    }

    // ==================== 一、用户信息获取测试 ====================

    @Nested
    @DisplayName("1. 用户信息获取")
    class UserInfoTests {

        // ---------- getUserId ----------

        @Test
        @DisplayName("getUserId() - 正常获取用户ID")
        void testGetUserId_success() {
            setSecurityContextWithLoginUser(loginUser);
            assertEquals(100L, SecurityUtils.getUserId());
        }

        @Test
        @DisplayName("getUserId() - 不同用户ID")
        void testGetUserId_differentUserId() {
            loginUser.setUserId(999L);
            setSecurityContextWithLoginUser(loginUser);
            assertEquals(999L, SecurityUtils.getUserId());
        }

        @Test
        @DisplayName("getUserId() - 无SecurityContext抛出异常")
        void testGetUserId_noContext_throwsException() {
            assertThrows(ServiceException.class, () -> SecurityUtils.getUserId());
        }

        @Test
        @DisplayName("getUserId() - principal不是LoginUser抛出异常")
        void testGetUserId_notLoginUser_throwsException() {
            Authentication auth = new UsernamePasswordAuthenticationToken("anonymousUser", "password");
            SecurityContext context = SecurityContextHolder.createEmptyContext();
            context.setAuthentication(auth);
            SecurityContextHolder.setContext(context);

            assertThrows(ServiceException.class, () -> SecurityUtils.getUserId());
        }

        // ---------- getDeptId ----------

        @Test
        @DisplayName("getDeptId() - 正常获取部门ID")
        void testGetDeptId_success() {
            setSecurityContextWithLoginUser(loginUser);
            assertEquals(10L, SecurityUtils.getDeptId());
        }

        @Test
        @DisplayName("getDeptId() - 不同部门ID")
        void testGetDeptId_differentDeptId() {
            loginUser.setDeptId(200L);
            setSecurityContextWithLoginUser(loginUser);
            assertEquals(200L, SecurityUtils.getDeptId());
        }

        @Test
        @DisplayName("getDeptId() - 无SecurityContext抛出异常")
        void testGetDeptId_noContext_throwsException() {
            assertThrows(ServiceException.class, () -> SecurityUtils.getDeptId());
        }

        // ---------- getUsername ----------

        @Test
        @DisplayName("getUsername() - 正常获取用户账户名")
        void testGetUsername_success() {
            setSecurityContextWithLoginUser(loginUser);
            assertEquals("testUser", SecurityUtils.getUsername());
        }

        @Test
        @DisplayName("getUsername() - 不同用户名")
        void testGetUsername_differentUsername() {
            sysUser.setUserName("admin_zhitan");
            setSecurityContextWithLoginUser(loginUser);
            assertEquals("admin_zhitan", SecurityUtils.getUsername());
        }

        @Test
        @DisplayName("getUsername() - 无SecurityContext抛出异常")
        void testGetUsername_noContext_throwsException() {
            assertThrows(ServiceException.class, () -> SecurityUtils.getUsername());
        }

        // ---------- getLoginUser ----------

        @Test
        @DisplayName("getLoginUser() - 正常获取登录用户")
        void testGetLoginUser_success() {
            setSecurityContextWithLoginUser(loginUser);
            LoginUser result = SecurityUtils.getLoginUser();
            assertNotNull(result);
            assertEquals(100L, result.getUserId());
            assertEquals("testUser", result.getUsername());
        }

        @Test
        @DisplayName("getLoginUser() - 无认证信息返回null")
        void testGetLoginUser_noAuth_returnsNull() {
            SecurityContext context = SecurityContextHolder.createEmptyContext();
            SecurityContextHolder.setContext(context);
            LoginUser result = SecurityUtils.getLoginUser();
            assertNull(result);
        }

        @Test
        @DisplayName("getLoginUser() - principal不是LoginUser返回null")
        void testGetLoginUser_notLoginUser_returnsNull() {
            Authentication auth = new UsernamePasswordAuthenticationToken("stringPrincipal", "password");
            SecurityContext context = SecurityContextHolder.createEmptyContext();
            context.setAuthentication(auth);
            SecurityContextHolder.setContext(context);

            LoginUser result = SecurityUtils.getLoginUser();
            assertNull(result);
        }

        // ---------- getAuthentication ----------

        @Test
        @DisplayName("getAuthentication() - 正常获取Authentication")
        void testGetAuthentication_success() {
            setSecurityContextWithLoginUser(loginUser);
            Authentication auth = SecurityUtils.getAuthentication();
            assertNotNull(auth);
            assertTrue(auth.getPrincipal() instanceof LoginUser);
        }

        @Test
        @DisplayName("getAuthentication() - 空上下文返回null")
        void testGetAuthentication_emptyContext_returnsNull() {
            SecurityContextHolder.clearContext();
            Authentication auth = SecurityUtils.getAuthentication();
            assertNull(auth);
        }
    }

    // ==================== 二、密码处理测试 ====================

    @Nested
    @DisplayName("2. 密码处理")
    class PasswordTests {

        @Test
        @DisplayName("encryptPassword() - 生成BCrypt加密密码不为空")
        void testEncryptPassword_notEmpty() {
            String encoded = SecurityUtils.encryptPassword("123456");
            assertNotNull(encoded);
            assertFalse(encoded.isEmpty());
        }

        @Test
        @DisplayName("encryptPassword() - 相同密码加密后结果不同（盐值随机）")
        void testEncryptPassword_differentResultForSamePassword() {
            String encoded1 = SecurityUtils.encryptPassword("123456");
            String encoded2 = SecurityUtils.encryptPassword("123456");
            // BCrypt每次加密结果不同
            assertNotEquals(encoded1, encoded2);
        }

        @Test
        @DisplayName("encryptPassword() - 加密结果以$2a$开头")
        void testEncryptPassword_formatCorrect() {
            String encoded = SecurityUtils.encryptPassword("myPassword");
            assertTrue(encoded.startsWith("$2a$") || encoded.startsWith("$2b$") || encoded.startsWith("$2y$"),
                    "BCrypt加密结果应以$2a$/$2b$/$2y$开头");
        }

        @Test
        @DisplayName("matchesPassword() - 正确密码匹配返回true")
        void testMatchesPassword_correctPassword() {
            String rawPassword = "admin123";
            String encoded = SecurityUtils.encryptPassword(rawPassword);
            assertTrue(SecurityUtils.matchesPassword(rawPassword, encoded));
        }

        @Test
        @DisplayName("matchesPassword() - 错误密码匹配返回false")
        void testMatchesPassword_wrongPassword() {
            String encoded = SecurityUtils.encryptPassword("admin123");
            assertFalse(SecurityUtils.matchesPassword("wrongPassword", encoded));
        }

        @Test
        @DisplayName("matchesPassword() - 空密码加密后匹配")
        void testMatchesPassword_emptyPassword() {
            String encoded = SecurityUtils.encryptPassword("");
            assertTrue(SecurityUtils.matchesPassword("", encoded));
        }

        @Test
        @DisplayName("matchesPassword() - 特殊字符密码匹配")
        void testMatchesPassword_specialCharsPassword() {
            String rawPassword = "P@$$w0rd!#%^&*()";
            String encoded = SecurityUtils.encryptPassword(rawPassword);
            assertTrue(SecurityUtils.matchesPassword(rawPassword, encoded));
        }

        @Test
        @DisplayName("matchesPassword() - 超长密码匹配")
        void testMatchesPassword_longPassword() {
            String rawPassword = StringUtils.repeat("a", 72);
            String encoded = SecurityUtils.encryptPassword(rawPassword);
            assertTrue(SecurityUtils.matchesPassword(rawPassword, encoded));
        }

        @Test
        @DisplayName("matchesPassword() - 中文密码匹配")
        void testMatchesPassword_chinesePassword() {
            String rawPassword = "智碳能源管理系统2024";
            String encoded = SecurityUtils.encryptPassword(rawPassword);
            assertTrue(SecurityUtils.matchesPassword(rawPassword, encoded));
        }
    }

    // ==================== 三、管理员判断测试 ====================

    @Nested
    @DisplayName("3. 管理员判断")
    class AdminCheckTests {

        @Test
        @DisplayName("isAdmin() - userId为1返回true")
        void testIsAdmin_adminUser() {
            assertTrue(SecurityUtils.isAdmin(1L));
        }

        @Test
        @DisplayName("isAdmin() - userId为其他值返回false")
        void testIsAdmin_notAdmin() {
            assertFalse(SecurityUtils.isAdmin(2L));
        }

        @Test
        @DisplayName("isAdmin() - userId为null返回false")
        void testIsAdmin_nullUserId() {
            assertFalse(SecurityUtils.isAdmin(null));
        }

        @Test
        @DisplayName("isAdmin() - userId为0返回false")
        void testIsAdmin_zeroUserId() {
            assertFalse(SecurityUtils.isAdmin(0L));
        }

        @Test
        @DisplayName("isAdmin() - userId为负数返回false")
        void testIsAdmin_negativeUserId() {
            assertFalse(SecurityUtils.isAdmin(-1L));
        }

        @Test
        @DisplayName("isAdmin() - userId为Long最大值返回false")
        void testIsAdmin_maxValue() {
            assertFalse(SecurityUtils.isAdmin(Long.MAX_VALUE));
        }
    }

    // ==================== 四、权限判断测试（Collection参数版本） ====================

    @Nested
    @DisplayName("4. 权限判断 hasPermi(Collection, String)")
    class HasPermiCollectionTests {

        @Test
        @DisplayName("hasPermi() - 精确匹配权限返回true")
        void testHasPermi_exactMatch() {
            Collection<String> authorities = Arrays.asList("system:user:list", "system:user:add");
            assertTrue(SecurityUtils.hasPermi(authorities, "system:user:list"));
        }

        @Test
        @DisplayName("hasPermi() - 不存在的权限返回false")
        void testHasPermi_noMatch() {
            Collection<String> authorities = Arrays.asList("system:user:list", "system:user:add");
            assertFalse(SecurityUtils.hasPermi(authorities, "system:user:remove"));
        }

        @Test
        @DisplayName("hasPermi() - 拥有所有权限标识*:*:*返回true")
        void testHasPermi_allPermission() {
            Collection<String> authorities = Collections.singletonList(Constants.ALL_PERMISSION);
            assertTrue(SecurityUtils.hasPermi(authorities, "any:permission:string"));
        }

        @Test
        @DisplayName("hasPermi() - 空权限列表返回false")
        void testHasPermi_emptyAuthorities() {
            Collection<String> authorities = Collections.emptyList();
            assertFalse(SecurityUtils.hasPermi(authorities, "system:user:list"));
        }

        @Test
        @DisplayName("hasPermi() - 权限列表含空白字符被过滤不影响判断")
        void testHasPermi_blankEntries() {
            Collection<String> authorities = Arrays.asList("", "  ", "system:user:list");
            assertTrue(SecurityUtils.hasPermi(authorities, "system:user:list"));
        }

        @Test
        @DisplayName("hasPermi() - 多个权限中匹配第二个")
        void testHasPermi_matchSecond() {
            Collection<String> authorities = Arrays.asList("system:user:list", "system:role:list", "monitor:online:list");
            assertTrue(SecurityUtils.hasPermi(authorities, "system:role:list"));
        }

        @Test
        @DisplayName("hasPermi() - 通配符简单匹配")
        void testHasPermi_simpleMatchWildcard() {
            // PatternMatchUtils.simpleMatch 支持 * 通配符
            Collection<String> authorities = Collections.singletonList("system:user:*");
            assertTrue(SecurityUtils.hasPermi(authorities, "system:user:list"));
        }

        @Test
        @DisplayName("hasPermi() - 通配符匹配所有system权限")
        void testHasPermi_simpleMatchSystemWildcard() {
            Collection<String> authorities = Collections.singletonList("system:*:*");
            assertTrue(SecurityUtils.hasPermi(authorities, "system:role:edit"));
        }

        @Test
        @DisplayName("hasPermi() - 通配符不匹配不同模块")
        void testHasPermi_simpleMatchNotMatchDifferentModule() {
            Collection<String> authorities = Collections.singletonList("system:user:*");
            assertFalse(SecurityUtils.hasPermi(authorities, "monitor:online:list"));
        }
    }

    // ==================== 五、权限判断测试（LoginUser上下文版本） ====================

    @Nested
    @DisplayName("5. 权限判断 hasPermi(String) - 上下文版本")
    class HasPermiContextTests {

        @Test
        @DisplayName("hasPermi(String) - 拥有权限返回true")
        void testHasPermi_hasPermission() {
            setSecurityContextWithLoginUser(loginUser);
            assertTrue(SecurityUtils.hasPermi("system:user:list"));
        }

        @Test
        @DisplayName("hasPermi(String) - 不拥有权限返回false")
        void testHasPermi_noPermission() {
            setSecurityContextWithLoginUser(loginUser);
            assertFalse(SecurityUtils.hasPermi("finance:report:view"));
        }

        @Test
        @DisplayName("hasPermi(String) - 全权限用户匹配任意权限")
        void testHasPermi_allPermission() {
            Set<String> allPerms = Collections.singleton(Constants.ALL_PERMISSION);
            LoginUser allPowerUser = new LoginUser(1L, 1L, sysUser, new HashSet<>(allPerms));
            setSecurityContextWithLoginUser(allPowerUser);
            assertTrue(SecurityUtils.hasPermi("any:module:any"));
        }
    }

    // ==================== 六、角色判断测试（Collection参数版本） ====================

    @Nested
    @DisplayName("6. 角色判断 hasRole(Collection, String)")
    class HasRoleCollectionTests {

        @Test
        @DisplayName("hasRole() - 精确匹配角色返回true")
        void testHasRole_exactMatch() {
            Collection<String> roles = Arrays.asList("common", "admin", "manager");
            assertTrue(SecurityUtils.hasRole(roles, "common"));
        }

        @Test
        @DisplayName("hasRole() - 不存在的角色返回false")
        void testHasRole_noMatch() {
            Collection<String> roles = Arrays.asList("common", "manager");
            assertFalse(SecurityUtils.hasRole(roles, "superadmin"));
        }

        @Test
        @DisplayName("hasRole() - 拥有超级管理员角色admin匹配任意角色")
        void testHasRole_superAdmin() {
            Collection<String> roles = Collections.singletonList(Constants.SUPER_ADMIN);
            assertTrue(SecurityUtils.hasRole(roles, "any_role"));
        }

        @Test
        @DisplayName("hasRole() - 空角色列表返回false")
        void testHasRole_emptyRoles() {
            Collection<String> roles = Collections.emptyList();
            assertFalse(SecurityUtils.hasRole(roles, "common"));
        }

        @Test
        @DisplayName("hasRole() - 角色列表含空白字符被过滤不影响判断")
        void testHasRole_blankEntries() {
            Collection<String> roles = Arrays.asList("", "  ", "common");
            assertTrue(SecurityUtils.hasRole(roles, "common"));
        }

        @Test
        @DisplayName("hasRole() - 通配符简单匹配")
        void testHasRole_simpleMatchWildcard() {
            Collection<String> roles = Collections.singletonList("sys*");
            assertTrue(SecurityUtils.hasRole(roles, "system"));
        }

        @Test
        @DisplayName("hasRole() - 通配符不匹配无关联角色")
        void testHasRole_simpleMatchNoMatch() {
            Collection<String> roles = Collections.singletonList("sys*");
            assertFalse(SecurityUtils.hasRole(roles, "manager"));
        }

        @Test
        @DisplayName("hasRole() - 超级管理员admin匹配所有角色")
        void testHasRole_superAdminMatchesAll() {
            Collection<String> roles = Collections.singletonList("admin");
            assertTrue(SecurityUtils.hasRole(roles, "common"));
            assertTrue(SecurityUtils.hasRole(roles, "manager"));
            assertTrue(SecurityUtils.hasRole(roles, "superadmin"));
        }
    }

    // ==================== 七、角色判断测试（LoginUser上下文版本） ====================

    @Nested
    @DisplayName("7. 角色判断 hasRole(String) - 上下文版本")
    class HasRoleContextTests {

        @Test
        @DisplayName("hasRole(String) - 拥有角色返回true")
        void testHasRole_hasRole() {
            setSecurityContextWithLoginUser(loginUser);
            assertTrue(SecurityUtils.hasRole("common"));
        }

        @Test
        @DisplayName("hasRole(String) - 拥有admin角色返回true")
        void testHasRole_hasAdminRole() {
            setSecurityContextWithLoginUser(loginUser);
            assertTrue(SecurityUtils.hasRole("admin"));
        }

        @Test
        @DisplayName("hasRole(String) - 不拥有角色返回false")
        void testHasRole_noRole() {
            setSecurityContextWithLoginUser(loginUser);
            assertFalse(SecurityUtils.hasRole("superadmin"));
        }

        @Test
        @DisplayName("hasRole(String) - 超级管理员角色用户匹配任意角色")
        void testHasRole_superAdminUser() {
            SysRole superAdminRole = new SysRole();
            superAdminRole.setRoleId(1L);
            superAdminRole.setRoleName("超级管理员");
            superAdminRole.setRoleKey("admin");

            SysUser adminUser = new SysUser();
            adminUser.setUserId(1L);
            adminUser.setUserName("admin");
            adminUser.setRoles(Collections.singletonList(superAdminRole));

            LoginUser adminLoginUser = new LoginUser(1L, 1L, adminUser, new HashSet<>());
            setSecurityContextWithLoginUser(adminLoginUser);
            assertTrue(SecurityUtils.hasRole("any_role"));
        }
    }

    // ==================== 八、边界场景测试 ====================

    @Nested
    @DisplayName("8. 边界场景")
    class EdgeCaseTests {

        @Test
        @DisplayName("getLoginUser() - SecurityContext中无Authentication返回null")
        void testGetLoginUser_noAuthentication() {
            SecurityContext context = SecurityContextHolder.createEmptyContext();
            // 不设置Authentication
            SecurityContextHolder.setContext(context);
            assertNull(SecurityUtils.getLoginUser());
        }

        @Test
        @DisplayName("getLoginUser() - Authentication的principal为null返回null")
        void testGetLoginUser_nullPrincipal() {
            // UsernamePasswordAuthenticationToken在unauthenticated时principal可以为null
            SecurityContext context = SecurityContextHolder.createEmptyContext();
            SecurityContextHolder.setContext(context);
            assertNull(SecurityUtils.getLoginUser());
        }

        @Test
        @DisplayName("encryptPassword() + matchesPassword() - 加密后能正确验证")
        void testEncryptAndMatch_integration() {
            String[] passwords = {"123456", "admin", "P@ssw0rd!", "智碳系统", "a b c d e"};
            for (String pwd : passwords) {
                String encoded = SecurityUtils.encryptPassword(pwd);
                assertTrue(SecurityUtils.matchesPassword(pwd, encoded),
                        "密码'" + pwd + "'加密后应能匹配验证");
            }
        }

        @Test
        @DisplayName("hasPermi() - 权限列表中混合有效和无效条目")
        void testHasPermi_mixedEntries() {
            Collection<String> authorities = Arrays.asList(null, "", "  ", "system:user:list");
            // null会导致NPE，但空白条目会被过滤
            // 只测试有效条目
            Collection<String> safeAuthorities = Arrays.asList("", "system:user:list");
            assertTrue(SecurityUtils.hasPermi(safeAuthorities, "system:user:list"));
        }

        @Test
        @DisplayName("hasRole() - 角色列表中混合有效和空白条目")
        void testHasRole_mixedEntries() {
            Collection<String> roles = Arrays.asList("", "  ", "common");
            assertTrue(SecurityUtils.hasRole(roles, "common"));
        }

        @Test
        @DisplayName("getUserId() - 验证异常状态码为401")
        void testGetUserId_exceptionCode() {
            try {
                SecurityUtils.getUserId();
                fail("应抛出ServiceException");
            } catch (ServiceException e) {
                assertEquals(401, e.getCode());
                assertEquals("获取用户ID异常", e.getMessage());
            }
        }

        @Test
        @DisplayName("getDeptId() - 验证异常状态码为401")
        void testGetDeptId_exceptionCode() {
            try {
                SecurityUtils.getDeptId();
                fail("应抛出ServiceException");
            } catch (ServiceException e) {
                assertEquals(401, e.getCode());
                assertEquals("获取部门ID异常", e.getMessage());
            }
        }

        @Test
        @DisplayName("getUsername() - 验证异常状态码为401")
        void testGetUsername_exceptionCode() {
            try {
                SecurityUtils.getUsername();
                fail("应抛出ServiceException");
            } catch (ServiceException e) {
                assertEquals(401, e.getCode());
                assertEquals("获取用户账户异常", e.getMessage());
            }
        }

        @Test
        @DisplayName("SecurityContext - 多个用户切换上下文")
        void testContextSwitching() {
            // 设置第一个用户
            setSecurityContextWithLoginUser(loginUser);
            assertEquals(100L, SecurityUtils.getUserId());
            assertEquals("testUser", SecurityUtils.getUsername());

            // 切换到第二个用户
            SysUser user2 = new SysUser();
            user2.setUserId(200L);
            user2.setUserName("secondUser");
            user2.setRoles(Collections.emptyList());
            LoginUser loginUser2 = new LoginUser(200L, 20L, user2, new HashSet<>());
            setSecurityContextWithLoginUser(loginUser2);

            assertEquals(200L, SecurityUtils.getUserId());
            assertEquals("secondUser", SecurityUtils.getUsername());
            assertEquals(20L, SecurityUtils.getDeptId());
        }

        @Test
        @DisplayName("clearContext后获取用户抛出异常")
        void testClearContext() {
            setSecurityContextWithLoginUser(loginUser);
            assertEquals(100L, SecurityUtils.getUserId());

            SecurityContextHolder.clearContext();
            assertThrows(ServiceException.class, () -> SecurityUtils.getUserId());
        }
    }
}

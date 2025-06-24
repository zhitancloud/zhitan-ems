
-- ----------------------------
-- Sequence structure for column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."column_id_seq";
CREATE SEQUENCE "public"."column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 657
CACHE 1;

-- ----------------------------
-- Sequence structure for config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."config_id_seq";
CREATE SEQUENCE "public"."config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 15
CACHE 1;

-- ----------------------------
-- Sequence structure for dept_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."dept_id_seq";
CREATE SEQUENCE "public"."dept_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 120
CACHE 1;

-- ----------------------------
-- Sequence structure for dict_code_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."dict_code_seq";
CREATE SEQUENCE "public"."dict_code_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 116
CACHE 1;

-- ----------------------------
-- Sequence structure for dict_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."dict_id_seq";
CREATE SEQUENCE "public"."dict_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 38
CACHE 1;

-- ----------------------------
-- Sequence structure for equip_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."equip_id_seq";
CREATE SEQUENCE "public"."equip_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1963
CACHE 1;

-- ----------------------------
-- Sequence structure for info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."info_id_seq";
CREATE SEQUENCE "public"."info_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1959
CACHE 1;

-- ----------------------------
-- Sequence structure for job_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."job_id_seq";
CREATE SEQUENCE "public"."job_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5
CACHE 1;

-- ----------------------------
-- Sequence structure for job_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."job_log_id_seq";
CREATE SEQUENCE "public"."job_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 2
CACHE 1;

-- ----------------------------
-- Sequence structure for menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_id_seq";
CREATE SEQUENCE "public"."menu_id_seq" 
INCREMENT 1
MINVALUE  2000
MAXVALUE 9223372036854775807
START 2180
CACHE 1;

-- ----------------------------
-- Sequence structure for notice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notice_id_seq";
CREATE SEQUENCE "public"."notice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 11
CACHE 1;

-- ----------------------------
-- Sequence structure for oper_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oper_id_seq";
CREATE SEQUENCE "public"."oper_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 36371
CACHE 1;

-- ----------------------------
-- Sequence structure for post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_id_seq";
CREATE SEQUENCE "public"."post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 9
CACHE 1;

-- ----------------------------
-- Sequence structure for product_output_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_output_id_seq";
CREATE SEQUENCE "public"."product_output_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."role_id_seq";
CREATE SEQUENCE "public"."role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 15
CACHE 1;

-- ----------------------------
-- Sequence structure for student_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."student_id_seq";
CREATE SEQUENCE "public"."student_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 38
CACHE 1;

-- ----------------------------
-- Sequence structure for sysEquip_id
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sysEquip_id";
CREATE SEQUENCE "public"."sysEquip_id" 
INCREMENT 1
MINVALUE  1
MAXVALUE 100000
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_enerclass_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_enerclass_seq";
CREATE SEQUENCE "public"."sys_enerclass_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 200
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_enercoefficient_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_enercoefficient_seq";
CREATE SEQUENCE "public"."sys_enercoefficient_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 200
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_energy_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_energy_seq";
CREATE SEQUENCE "public"."sys_energy_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_price_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_price_seq";
CREATE SEQUENCE "public"."sys_price_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_product_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_product_seq";
CREATE SEQUENCE "public"."sys_product_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 11
CACHE 1;

-- ----------------------------
-- Sequence structure for table_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."table_id_seq";
CREATE SEQUENCE "public"."table_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 76
CACHE 1;

-- ----------------------------
-- Sequence structure for user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_id_seq";
CREATE SEQUENCE "public"."user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 18
CACHE 1;

-- ----------------------------
-- Table structure for alarm_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."alarm_history";
CREATE TABLE "public"."alarm_history" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "index_id" varchar(36) COLLATE "pg_catalog"."default",
  "index_name" varchar(20) COLLATE "pg_catalog"."default",
  "item_id" varchar(50) COLLATE "pg_catalog"."default",
  "limiting_value" float4,
  "alarm_value" float4,
  "alarm_value_quality" varchar(20) COLLATE "pg_catalog"."default",
  "begin_time" timestamp(6),
  "end_time" timestamp(6),
  "duration" float4,
  "content" text COLLATE "pg_catalog"."default",
  "time_code" varchar(200) COLLATE "pg_catalog"."default",
  "alarm_code" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."alarm_history"."id" IS '报警历史主键';
COMMENT ON COLUMN "public"."alarm_history"."index_id" IS '指标主键id';
COMMENT ON COLUMN "public"."alarm_history"."index_name" IS '指标名称';
COMMENT ON COLUMN "public"."alarm_history"."item_id" IS '报警项id';
COMMENT ON COLUMN "public"."alarm_history"."limiting_value" IS '报警限值';
COMMENT ON COLUMN "public"."alarm_history"."alarm_value" IS '报警值';
COMMENT ON COLUMN "public"."alarm_history"."alarm_value_quality" IS '报警值质量';
COMMENT ON COLUMN "public"."alarm_history"."begin_time" IS '报警时间起';
COMMENT ON COLUMN "public"."alarm_history"."end_time" IS '报警时间止';
COMMENT ON COLUMN "public"."alarm_history"."duration" IS '报警时长';
COMMENT ON COLUMN "public"."alarm_history"."content" IS '报警内容';
COMMENT ON TABLE "public"."alarm_history" IS '历史报警';

-- ----------------------------
-- Records of alarm_history
-- ----------------------------

-- ----------------------------
-- Table structure for alarm_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."alarm_item";
CREATE TABLE "public"."alarm_item" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "dwid" varchar(36) COLLATE "pg_catalog"."default",
  "start_stop" varchar(2) COLLATE "pg_catalog"."default",
  "time_slot" varchar(10) COLLATE "pg_catalog"."default",
  "limit_type" varchar(2) COLLATE "pg_catalog"."default",
  "limit_val" varchar(300) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "alarm_level" varchar(64) COLLATE "pg_catalog"."default",
  "node_id" varchar(64) COLLATE "pg_catalog"."default",
  "alarm_code" varchar(255) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."alarm_item"."id" IS '主键id';
COMMENT ON COLUMN "public"."alarm_item"."dwid" IS '指标的主键id';
COMMENT ON COLUMN "public"."alarm_item"."start_stop" IS '启停状态 1启动2停止';
COMMENT ON COLUMN "public"."alarm_item"."time_slot" IS '时段';
COMMENT ON COLUMN "public"."alarm_item"."limit_type" IS '限   1下下限  2下限 3上限 4上上限';
COMMENT ON COLUMN "public"."alarm_item"."limit_val" IS '限值';
COMMENT ON COLUMN "public"."alarm_item"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."alarm_item"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."alarm_item"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."alarm_item"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."alarm_item"."alarm_level" IS '报警级别';
COMMENT ON COLUMN "public"."alarm_item"."node_id" IS '模型model_node.node_id';
COMMENT ON COLUMN "public"."alarm_item"."remark" IS '备注';
COMMENT ON TABLE "public"."alarm_item" IS '报警设置明细';

-- ----------------------------
-- Records of alarm_item
-- ----------------------------

-- ----------------------------
-- Table structure for alarm_limit_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."alarm_limit_type";
CREATE TABLE "public"."alarm_limit_type" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "limit_name" varchar(30) COLLATE "pg_catalog"."default",
  "limit_code" varchar(20) COLLATE "pg_catalog"."default",
  "color_number" varchar(100) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) DEFAULT now(),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "comparator_operator" varchar(255) COLLATE "pg_catalog"."default",
  "alarm_type" varchar(20) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."alarm_limit_type"."limit_name" IS '限值类型名称';
COMMENT ON COLUMN "public"."alarm_limit_type"."limit_code" IS '限值类型编码';
COMMENT ON COLUMN "public"."alarm_limit_type"."color_number" IS '色号';
COMMENT ON COLUMN "public"."alarm_limit_type"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."alarm_limit_type"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."alarm_limit_type"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."alarm_limit_type"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."alarm_limit_type"."comparator_operator" IS '逻辑运算符';
COMMENT ON COLUMN "public"."alarm_limit_type"."alarm_type" IS '警戒类型';
COMMENT ON COLUMN "public"."alarm_limit_type"."remark" IS '备注';
COMMENT ON TABLE "public"."alarm_limit_type" IS '限值类型';

-- ----------------------------
-- Records of alarm_limit_type
-- ----------------------------

-- ----------------------------
-- Table structure for alarm_realtime
-- ----------------------------
DROP TABLE IF EXISTS "public"."alarm_realtime";
CREATE TABLE "public"."alarm_realtime" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "index_id" varchar(36) COLLATE "pg_catalog"."default",
  "index_name" varchar(20) COLLATE "pg_catalog"."default",
  "item_id" varchar(50) COLLATE "pg_catalog"."default",
  "limiting_value" float4,
  "alarm_value" float4,
  "alarm_value_quality" varchar(20) COLLATE "pg_catalog"."default",
  "begin_time" timestamp(6),
  "content" text COLLATE "pg_catalog"."default",
  "time_code" varchar(200) COLLATE "pg_catalog"."default",
  "alarm_code" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."alarm_realtime"."id" IS '主键id';
COMMENT ON COLUMN "public"."alarm_realtime"."index_id" IS '指标id';
COMMENT ON COLUMN "public"."alarm_realtime"."index_name" IS '指标名称';
COMMENT ON COLUMN "public"."alarm_realtime"."item_id" IS '报警项id';
COMMENT ON COLUMN "public"."alarm_realtime"."limiting_value" IS '报警限值';
COMMENT ON COLUMN "public"."alarm_realtime"."alarm_value" IS '报警值';
COMMENT ON COLUMN "public"."alarm_realtime"."alarm_value_quality" IS '报警值质量';
COMMENT ON COLUMN "public"."alarm_realtime"."begin_time" IS '报警时间';
COMMENT ON COLUMN "public"."alarm_realtime"."content" IS '内容';
COMMENT ON TABLE "public"."alarm_realtime" IS '实时报警';

-- ----------------------------
-- Records of alarm_realtime
-- ----------------------------

-- ----------------------------
-- Table structure for benchmark
-- ----------------------------
DROP TABLE IF EXISTS "public"."benchmark";
CREATE TABLE "public"."benchmark" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(32) COLLATE "pg_catalog"."default",
  "grade" varchar(255) COLLATE "pg_catalog"."default",
  "value" varchar(255) COLLATE "pg_catalog"."default",
  "national_num" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."benchmark"."id" IS 'uuid主键';
COMMENT ON COLUMN "public"."benchmark"."code" IS '标杆编码';
COMMENT ON COLUMN "public"."benchmark"."type" IS '标杆类型';
COMMENT ON COLUMN "public"."benchmark"."grade" IS '标杆等级';
COMMENT ON COLUMN "public"."benchmark"."value" IS '标杆值';
COMMENT ON COLUMN "public"."benchmark"."national_num" IS '国标编号';
COMMENT ON COLUMN "public"."benchmark"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."benchmark"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."benchmark"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."benchmark"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."benchmark"."remark" IS '备注';
COMMENT ON TABLE "public"."benchmark" IS '标杆值管理';

-- ----------------------------
-- Records of benchmark
-- ----------------------------

-- ----------------------------
-- Table structure for cost_price_relevancy
-- ----------------------------
DROP TABLE IF EXISTS "public"."cost_price_relevancy";
CREATE TABLE "public"."cost_price_relevancy" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) DEFAULT now(),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "node_id" varchar COLLATE "pg_catalog"."default",
  "tactics_id" varchar COLLATE "pg_catalog"."default",
  "energy_type" numeric(11,0),
  "effective_begin_time" date,
  "effective_end_time" date
)
;
COMMENT ON COLUMN "public"."cost_price_relevancy"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."cost_price_relevancy"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."cost_price_relevancy"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cost_price_relevancy"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."cost_price_relevancy"."remark" IS '备注';
COMMENT ON COLUMN "public"."cost_price_relevancy"."node_id" IS '用能单位';
COMMENT ON COLUMN "public"."cost_price_relevancy"."tactics_id" IS '单价策略id';
COMMENT ON COLUMN "public"."cost_price_relevancy"."energy_type" IS '能源品种';
COMMENT ON COLUMN "public"."cost_price_relevancy"."effective_begin_time" IS '有效期开始日期';
COMMENT ON COLUMN "public"."cost_price_relevancy"."effective_end_time" IS '有效期结束日期';
COMMENT ON TABLE "public"."cost_price_relevancy" IS '单价关联表';

-- ----------------------------
-- Records of cost_price_relevancy
-- ----------------------------

-- ----------------------------
-- Table structure for cost_price_tactics
-- ----------------------------
DROP TABLE IF EXISTS "public"."cost_price_tactics";
CREATE TABLE "public"."cost_price_tactics" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(2) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) DEFAULT now(),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "tactics_number" varchar(50) COLLATE "pg_catalog"."default",
  "tactics_name" varchar(50) COLLATE "pg_catalog"."default",
  "energy_type" numeric(11,0)
)
;
COMMENT ON COLUMN "public"."cost_price_tactics"."type" IS '是否阶梯价格0否1是';
COMMENT ON COLUMN "public"."cost_price_tactics"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."cost_price_tactics"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."cost_price_tactics"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cost_price_tactics"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."cost_price_tactics"."remark" IS '备注';
COMMENT ON COLUMN "public"."cost_price_tactics"."tactics_number" IS '策略编码';
COMMENT ON COLUMN "public"."cost_price_tactics"."tactics_name" IS '策略名称';
COMMENT ON COLUMN "public"."cost_price_tactics"."energy_type" IS '能源品种';
COMMENT ON TABLE "public"."cost_price_tactics" IS '成本策略表';

-- ----------------------------
-- Records of cost_price_tactics
-- ----------------------------

-- ----------------------------
-- Table structure for cost_price_tactics_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."cost_price_tactics_item";
CREATE TABLE "public"."cost_price_tactics_item" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) DEFAULT now(),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "range_type" varchar(11) COLLATE "pg_catalog"."default",
  "tactics_number" varchar(11) COLLATE "pg_catalog"."default",
  "tactics_id" varchar COLLATE "pg_catalog"."default",
  "electricity_type" varchar(11) COLLATE "pg_catalog"."default",
  "slots_min" varchar(50) COLLATE "pg_catalog"."default",
  "slots_max" varchar(50) COLLATE "pg_catalog"."default",
  "price" numeric(10,2)
)
;
COMMENT ON COLUMN "public"."cost_price_tactics_item"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."remark" IS '备注';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."range_type" IS '范围类型字典值cost_range_type';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."tactics_number" IS '策略编码';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."tactics_id" IS '关联策略id';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."electricity_type" IS '字典值spikes_and_valleys';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."slots_min" IS '区间范围最小值';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."slots_max" IS '区间范围最大值';
COMMENT ON COLUMN "public"."cost_price_tactics_item"."price" IS '单价';
COMMENT ON TABLE "public"."cost_price_tactics_item" IS '成本策略明细表';

-- ----------------------------
-- Records of cost_price_tactics_item
-- ----------------------------

-- ----------------------------
-- Table structure for data_auth_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_auth_role";
CREATE TABLE "public"."data_auth_role" (
  "role_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "node_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "model_code" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON TABLE "public"."data_auth_role" IS '角色数据权限（未使用）';

-- ----------------------------
-- Records of data_auth_role
-- ----------------------------

-- ----------------------------
-- Table structure for data_auth_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_auth_user";
CREATE TABLE "public"."data_auth_user" (
  "user_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "node_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "model_code" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON TABLE "public"."data_auth_user" IS '用户数据权限（未使用）';

-- ----------------------------
-- Records of data_auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS "public"."device";
CREATE TABLE "public"."device" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(100) COLLATE "pg_catalog"."default",
  "device_name" varchar(100) COLLATE "pg_catalog"."default",
  "device_type" varchar(999) COLLATE "pg_catalog"."default",
  "branch_factory" varchar(999) COLLATE "pg_catalog"."default",
  "installation_location" varchar(300) COLLATE "pg_catalog"."default",
  "device_grade" varchar(999) COLLATE "pg_catalog"."default",
  "rated_power" varchar(10) COLLATE "pg_catalog"."default",
  "production_date" date,
  "putrun_date" date,
  "manufacturer" varchar(250) COLLATE "pg_catalog"."default",
  "person_charge" varchar(50) COLLATE "pg_catalog"."default",
  "technical_data" varchar(250) COLLATE "pg_catalog"."default",
  "start_time" date,
  "check_cycle" int4,
  "reminder_cycle" int4,
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) DEFAULT now(),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(0),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "point_flag" varchar(2) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."device"."id" IS '主键id';
COMMENT ON COLUMN "public"."device"."code" IS '编码';
COMMENT ON COLUMN "public"."device"."device_name" IS '设备名称';
COMMENT ON COLUMN "public"."device"."device_type" IS '设备类型';
COMMENT ON COLUMN "public"."device"."branch_factory" IS '使用分厂';
COMMENT ON COLUMN "public"."device"."installation_location" IS '物理位置';
COMMENT ON COLUMN "public"."device"."device_grade" IS '能耗等级';
COMMENT ON COLUMN "public"."device"."rated_power" IS '额定功率';
COMMENT ON COLUMN "public"."device"."production_date" IS '生产日期';
COMMENT ON COLUMN "public"."device"."putrun_date" IS '投运日期';
COMMENT ON COLUMN "public"."device"."manufacturer" IS '生产厂家';
COMMENT ON COLUMN "public"."device"."person_charge" IS '负责人';
COMMENT ON COLUMN "public"."device"."technical_data" IS '技术参数';
COMMENT ON COLUMN "public"."device"."start_time" IS '起始时间';
COMMENT ON COLUMN "public"."device"."check_cycle" IS '检定周期';
COMMENT ON COLUMN "public"."device"."reminder_cycle" IS '提醒周期';
COMMENT ON COLUMN "public"."device"."remark" IS '备注';
COMMENT ON COLUMN "public"."device"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."device"."create_by" IS '监理人';
COMMENT ON COLUMN "public"."device"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."device"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."device"."point_flag" IS '重点能耗设备标识Y是N否';
COMMENT ON TABLE "public"."device" IS '设备档案';

-- ----------------------------
-- Records of device
-- ----------------------------

-- ----------------------------
-- Table structure for device_annex
-- ----------------------------
DROP TABLE IF EXISTS "public"."device_annex";
CREATE TABLE "public"."device_annex" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "device_id" varchar(36) COLLATE "pg_catalog"."default",
  "file_name" varchar(150) COLLATE "pg_catalog"."default",
  "file_suffix" varchar(6) COLLATE "pg_catalog"."default",
  "file_path" varchar(200) COLLATE "pg_catalog"."default",
  "del_flage" varchar(2) COLLATE "pg_catalog"."default" DEFAULT 'N'::character varying,
  "create_time" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."device_annex"."id" IS '主键id';
COMMENT ON COLUMN "public"."device_annex"."device_id" IS '设备档案id';
COMMENT ON COLUMN "public"."device_annex"."file_name" IS '文件名';
COMMENT ON COLUMN "public"."device_annex"."file_suffix" IS '文件后缀';
COMMENT ON COLUMN "public"."device_annex"."file_path" IS '文件路径';
COMMENT ON COLUMN "public"."device_annex"."del_flage" IS '删除标志';
COMMENT ON COLUMN "public"."device_annex"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."device_annex"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."device_annex"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."device_annex"."update_by" IS '修改人';
COMMENT ON TABLE "public"."device_annex" IS '设备档案附件';

-- ----------------------------
-- Records of device_annex
-- ----------------------------

-- ----------------------------
-- Table structure for energy_indicators
-- ----------------------------
DROP TABLE IF EXISTS "public"."energy_indicators";
CREATE TABLE "public"."energy_indicators" (
  "node_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "time_type" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "data_time" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "number" float8,
  "unit" varchar(20) COLLATE "pg_catalog"."default",
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "energy_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "indicators_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "energy_indicators_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "node_name" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."energy_indicators"."node_id" IS '用能单元id（model_node）';
COMMENT ON COLUMN "public"."energy_indicators"."time_type" IS '时间类型（年、月、日）';
COMMENT ON COLUMN "public"."energy_indicators"."data_time" IS '时间';
COMMENT ON COLUMN "public"."energy_indicators"."name" IS '名称';
COMMENT ON COLUMN "public"."energy_indicators"."number" IS '产量';
COMMENT ON COLUMN "public"."energy_indicators"."unit" IS '单位';
COMMENT ON COLUMN "public"."energy_indicators"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."energy_indicators"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."energy_indicators"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."energy_indicators"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."energy_indicators"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."energy_indicators"."remark" IS '备注';
COMMENT ON COLUMN "public"."energy_indicators"."energy_type" IS '能源类型，字典项energy_type';
COMMENT ON COLUMN "public"."energy_indicators"."indicators_type" IS '指标类型，字典项indicators_type';
COMMENT ON COLUMN "public"."energy_indicators"."energy_indicators_id" IS '主键';
COMMENT ON COLUMN "public"."energy_indicators"."node_name" IS '节点名称';
COMMENT ON TABLE "public"."energy_indicators" IS '能源指标录入';

-- ----------------------------
-- Records of energy_indicators
-- ----------------------------

-- ----------------------------
-- Table structure for energy_saving_program
-- ----------------------------
DROP TABLE IF EXISTS "public"."energy_saving_program";
CREATE TABLE "public"."energy_saving_program" (
  "id" int8 NOT NULL,
  "plan" text COLLATE "pg_catalog"."default",
  "completion_time" timestamp(6),
  "liable_person" varchar(50) COLLATE "pg_catalog"."default",
  "create_by" varchar(36) COLLATE "pg_catalog"."default",
  "update_by" varchar(36) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del" int2 NOT NULL,
  "implementation_plan" text COLLATE "pg_catalog"."default",
  "current_work" text COLLATE "pg_catalog"."default",
  "saving_amount" varchar(24) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."energy_saving_program"."plan" IS '总体计划';
COMMENT ON COLUMN "public"."energy_saving_program"."completion_time" IS '完成时间';
COMMENT ON COLUMN "public"."energy_saving_program"."liable_person" IS '项目组长';
COMMENT ON COLUMN "public"."energy_saving_program"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."energy_saving_program"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."energy_saving_program"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."energy_saving_program"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."energy_saving_program"."del" IS '是否删除';
COMMENT ON COLUMN "public"."energy_saving_program"."implementation_plan" IS '实施计划    ';
COMMENT ON COLUMN "public"."energy_saving_program"."current_work" IS '当前工作';
COMMENT ON COLUMN "public"."energy_saving_program"."saving_amount" IS '节约量';
COMMENT ON COLUMN "public"."energy_saving_program"."remark" IS '备注';
COMMENT ON TABLE "public"."energy_saving_program" IS '
节能项目管理
';

-- ----------------------------
-- Records of energy_saving_program
-- ----------------------------
INSERT INTO "public"."energy_saving_program" VALUES (1930096489600520194, '2025年第一季度节能改造项', '2025-06-06 00:00:00', '张书勤', 'admin', 'admin', '2025-06-04 10:57:17.225', '2025-06-04 10:57:23.944', 0, '2025年一季度节能改造实施计', '硬件方案咨', '20', NULL);

-- ----------------------------
-- Table structure for energy_statistics
-- ----------------------------
DROP TABLE IF EXISTS "public"."energy_statistics";
CREATE TABLE "public"."energy_statistics" (
  "id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "index_id" varchar(255) COLLATE "pg_catalog"."default",
  "index_code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "index_type" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."energy_statistics"."name" IS '名称';
COMMENT ON COLUMN "public"."energy_statistics"."index_id" IS '指标id';
COMMENT ON COLUMN "public"."energy_statistics"."index_code" IS '1、电electric 2、水water 3、 煤coal  4、蒸汽steam';

-- ----------------------------
-- Records of energy_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for energy_used
-- ----------------------------
DROP TABLE IF EXISTS "public"."energy_used";
CREATE TABLE "public"."energy_used" (
  "point_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "time_code" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "begin_time" timestamp(6),
  "end_time" timestamp(6),
  "value" float8,
  "quality" varchar(10) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "time_type" varchar(10) COLLATE "pg_catalog"."default",
  "data_time" timestamp(6),
  "create_by" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON TABLE "public"."energy_used" IS '能源使用量数据表';

-- ----------------------------
-- Records of energy_used
-- ----------------------------

-- ----------------------------
-- Table structure for energy_used_electricity
-- ----------------------------
DROP TABLE IF EXISTS "public"."energy_used_electricity";
CREATE TABLE "public"."energy_used_electricity" (
  "index_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "time_code" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "electricity_type" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "index_code" varchar(100) COLLATE "pg_catalog"."default",
  "data_time" timestamp(0),
  "begin_time" timestamp(0),
  "end_time" timestamp(6),
  "electricity" numeric(10,2) NOT NULL DEFAULT 0,
  "cost" numeric(10,2) NOT NULL DEFAULT 0,
  "price" numeric(10,2) NOT NULL DEFAULT 0,
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "time_type" varchar(10) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'HOUR'::character varying
)
;
COMMENT ON COLUMN "public"."energy_used_electricity"."index_id" IS '点位id';
COMMENT ON COLUMN "public"."energy_used_electricity"."time_code" IS '时间编号';
COMMENT ON COLUMN "public"."energy_used_electricity"."electricity_type" IS '用电类型峰、平、谷等';
COMMENT ON COLUMN "public"."energy_used_electricity"."index_code" IS '指标编码，冗余字段，可以用 code 查询';
COMMENT ON COLUMN "public"."energy_used_electricity"."data_time" IS '数据时间';
COMMENT ON COLUMN "public"."energy_used_electricity"."begin_time" IS '开始时间';
COMMENT ON COLUMN "public"."energy_used_electricity"."end_time" IS '结束时间';
COMMENT ON COLUMN "public"."energy_used_electricity"."electricity" IS '用电量';
COMMENT ON COLUMN "public"."energy_used_electricity"."cost" IS '电费';
COMMENT ON COLUMN "public"."energy_used_electricity"."price" IS '单价';
COMMENT ON COLUMN "public"."energy_used_electricity"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."energy_used_electricity"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."energy_used_electricity"."remark" IS '备注';
COMMENT ON COLUMN "public"."energy_used_electricity"."time_type" IS '时间类型';
COMMENT ON TABLE "public"."energy_used_electricity" IS '尖峰平谷数据表';

-- ----------------------------
-- Records of energy_used_electricity
-- ----------------------------

-- ----------------------------
-- Table structure for gateway_setting
-- ----------------------------
DROP TABLE IF EXISTS "public"."gateway_setting";
CREATE TABLE "public"."gateway_setting" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "gateway_num" varchar(20) COLLATE "pg_catalog"."default",
  "gateway_name" varchar(80) COLLATE "pg_catalog"."default",
  "specs_model" varchar(50) COLLATE "pg_catalog"."default",
  "install_location" varchar(100) COLLATE "pg_catalog"."default",
  "ip_add" varchar(255) COLLATE "pg_catalog"."default",
  "run_status" varchar(50) COLLATE "pg_catalog"."default",
  "hbt_time" timestamp(6),
  "device_num" int4,
  "pt_num" int4,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gateway_setting"."id" IS 'UUID主键';
COMMENT ON COLUMN "public"."gateway_setting"."gateway_num" IS '网关编号';
COMMENT ON COLUMN "public"."gateway_setting"."gateway_name" IS '网关名称';
COMMENT ON COLUMN "public"."gateway_setting"."specs_model" IS '规格型号';
COMMENT ON COLUMN "public"."gateway_setting"."install_location" IS '安装位置';
COMMENT ON COLUMN "public"."gateway_setting"."ip_add" IS 'ip地址';
COMMENT ON COLUMN "public"."gateway_setting"."run_status" IS '运行状态';
COMMENT ON COLUMN "public"."gateway_setting"."hbt_time" IS '心跳时间';
COMMENT ON COLUMN "public"."gateway_setting"."device_num" IS '计量器具数量';
COMMENT ON COLUMN "public"."gateway_setting"."pt_num" IS '监测点数量';
COMMENT ON COLUMN "public"."gateway_setting"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gateway_setting"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gateway_setting"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gateway_setting"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."gateway_setting"."remark" IS '备注';
COMMENT ON TABLE "public"."gateway_setting" IS '网关配置信息表';

-- ----------------------------
-- Records of gateway_setting
-- ----------------------------
INSERT INTO "public"."gateway_setting" VALUES ('ed6fffd6-9f4c-4f52-b196-35ed7434b3fb', '114412', '加工车间监测网关', '123', '总闸', '123.33.12.1', NULL, NULL, NULL, NULL, 'admin', '2025-06-04 10:26:01', 'admin', '2025-06-04 10:26:13.105', NULL);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table";
CREATE TABLE "public"."gen_table" (
  "table_id" int8 NOT NULL DEFAULT nextval('table_id_seq'::regclass),
  "table_name" varchar(200) COLLATE "pg_catalog"."default",
  "table_comment" varchar(500) COLLATE "pg_catalog"."default",
  "class_name" varchar(100) COLLATE "pg_catalog"."default",
  "tpl_category" varchar(200) COLLATE "pg_catalog"."default",
  "package_name" varchar(100) COLLATE "pg_catalog"."default",
  "module_name" varchar(30) COLLATE "pg_catalog"."default",
  "business_name" varchar(30) COLLATE "pg_catalog"."default",
  "function_name" varchar(50) COLLATE "pg_catalog"."default",
  "function_author" varchar(50) COLLATE "pg_catalog"."default",
  "options" varchar(1000) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "sub_table_name" varchar(64) COLLATE "pg_catalog"."default",
  "sub_table_fk_name" varchar(64) COLLATE "pg_catalog"."default",
  "tpl_web_type" varchar(30) COLLATE "pg_catalog"."default",
  "gen_type" char(1) COLLATE "pg_catalog"."default",
  "gen_path" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gen_table"."table_id" IS '编号';
COMMENT ON COLUMN "public"."gen_table"."table_name" IS '表名称';
COMMENT ON COLUMN "public"."gen_table"."table_comment" IS '表描述';
COMMENT ON COLUMN "public"."gen_table"."class_name" IS '实体类名称';
COMMENT ON COLUMN "public"."gen_table"."tpl_category" IS '使用的模板（crud单表操作 tree树表操作）';
COMMENT ON COLUMN "public"."gen_table"."package_name" IS '生成包路径';
COMMENT ON COLUMN "public"."gen_table"."module_name" IS '生成模块名';
COMMENT ON COLUMN "public"."gen_table"."business_name" IS '生成业务名';
COMMENT ON COLUMN "public"."gen_table"."function_name" IS '生成功能名';
COMMENT ON COLUMN "public"."gen_table"."function_author" IS '生成功能作者';
COMMENT ON COLUMN "public"."gen_table"."options" IS '其它生成选项';
COMMENT ON COLUMN "public"."gen_table"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gen_table"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gen_table"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."gen_table"."remark" IS '备注';
COMMENT ON COLUMN "public"."gen_table"."sub_table_name" IS '关联子表的表名';
COMMENT ON COLUMN "public"."gen_table"."sub_table_fk_name" IS '子表关联的外键名';
COMMENT ON COLUMN "public"."gen_table"."tpl_web_type" IS '前端模板类型（element-ui模版 element-plus模版）';
COMMENT ON COLUMN "public"."gen_table"."gen_type" IS '生成代码方式（0zip压缩包 1自定义路径）';
COMMENT ON COLUMN "public"."gen_table"."gen_path" IS '生成路径（不填默认项目路径）';
COMMENT ON TABLE "public"."gen_table" IS '代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table_column";
CREATE TABLE "public"."gen_table_column" (
  "column_id" int8 NOT NULL DEFAULT nextval('column_id_seq'::regclass),
  "table_id" int8,
  "column_name" varchar(200) COLLATE "pg_catalog"."default",
  "column_comment" varchar(500) COLLATE "pg_catalog"."default",
  "column_type" varchar(100) COLLATE "pg_catalog"."default",
  "java_type" varchar(500) COLLATE "pg_catalog"."default",
  "java_field" varchar(200) COLLATE "pg_catalog"."default",
  "is_pk" char(1) COLLATE "pg_catalog"."default",
  "is_increment" char(1) COLLATE "pg_catalog"."default",
  "is_required" char(1) COLLATE "pg_catalog"."default",
  "is_insert" char(1) COLLATE "pg_catalog"."default",
  "is_edit" char(1) COLLATE "pg_catalog"."default",
  "is_list" char(1) COLLATE "pg_catalog"."default",
  "is_query" char(1) COLLATE "pg_catalog"."default",
  "query_type" varchar(200) COLLATE "pg_catalog"."default",
  "html_type" varchar(200) COLLATE "pg_catalog"."default",
  "dict_type" varchar(200) COLLATE "pg_catalog"."default",
  "sort" int4,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."gen_table_column"."column_id" IS '编号';
COMMENT ON COLUMN "public"."gen_table_column"."table_id" IS '归属表编号';
COMMENT ON COLUMN "public"."gen_table_column"."column_name" IS '列名称';
COMMENT ON COLUMN "public"."gen_table_column"."column_comment" IS '列描述';
COMMENT ON COLUMN "public"."gen_table_column"."column_type" IS '列类型';
COMMENT ON COLUMN "public"."gen_table_column"."java_type" IS 'JAVA类型';
COMMENT ON COLUMN "public"."gen_table_column"."java_field" IS 'JAVA字段名';
COMMENT ON COLUMN "public"."gen_table_column"."is_pk" IS '是否主键（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_increment" IS '是否自增（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_required" IS '是否必填（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_insert" IS '是否为插入字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_edit" IS '是否编辑字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_list" IS '是否列表字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_query" IS '是否查询字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."query_type" IS '查询方式（等于、不等于、大于、小于、范围）';
COMMENT ON COLUMN "public"."gen_table_column"."html_type" IS '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）';
COMMENT ON COLUMN "public"."gen_table_column"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."gen_table_column"."sort" IS '排序';
COMMENT ON COLUMN "public"."gen_table_column"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gen_table_column"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table_column"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gen_table_column"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."gen_table_column" IS '代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO "public"."gen_table_column" VALUES (815, 94, 'id', 'uuid主键', 'varchar', 'String', 'id', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 1, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (816, 94, 'code', '标杆编码', 'varchar', 'String', 'code', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', NULL, 2, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (817, 94, 'type', '标杆类型', 'varchar', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', NULL, 3, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (818, 94, 'grade', '标杆等级', 'varchar', 'String', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', NULL, 4, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (819, 94, 'value', '标杆值', 'varchar', 'String', 'value', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', NULL, 5, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (820, 94, 'national_num', '国标编号', 'varchar', 'String', 'nationalNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', NULL, 6, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (821, 94, 'create_by', '创建者', 'varchar', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 7, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (822, 94, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', NULL, 8, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (823, 94, 'update_by', '更新者', 'varchar', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', NULL, 9, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (824, 94, 'update_time', '更新时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', NULL, 10, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);
INSERT INTO "public"."gen_table_column" VALUES (825, 94, 'remark', '备注', 'varchar', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', NULL, 11, 'admin', '2024-11-12 09:56:44.891586', NULL, NULL);

-- ----------------------------
-- Table structure for input_electricity_cost
-- ----------------------------
DROP TABLE IF EXISTS "public"."input_electricity_cost";
CREATE TABLE "public"."input_electricity_cost" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(8) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) DEFAULT now(),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "electricity_num" numeric(11,2),
  "time" varchar(20) COLLATE "pg_catalog"."default",
  "electricity_fee" numeric(11,2),
  "power_factor" numeric(11,2),
  "sharp_electricity" numeric(11,2),
  "peak_electricity" numeric(11,2),
  "flat_electricity" numeric(11,2),
  "valley_electricity" numeric(11,2),
  "deep_valley_electricity" numeric(11,2)
)
;
COMMENT ON COLUMN "public"."input_electricity_cost"."type" IS '时间类型字典值timeType';
COMMENT ON COLUMN "public"."input_electricity_cost"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."input_electricity_cost"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."input_electricity_cost"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."input_electricity_cost"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."input_electricity_cost"."remark" IS '备注';
COMMENT ON COLUMN "public"."input_electricity_cost"."electricity_num" IS '电量';
COMMENT ON COLUMN "public"."input_electricity_cost"."time" IS '查询时间';
COMMENT ON COLUMN "public"."input_electricity_cost"."electricity_fee" IS '电费';
COMMENT ON COLUMN "public"."input_electricity_cost"."power_factor" IS '功率因数';
COMMENT ON COLUMN "public"."input_electricity_cost"."sharp_electricity" IS '尖时段用电量';
COMMENT ON COLUMN "public"."input_electricity_cost"."peak_electricity" IS '峰时段用电量';
COMMENT ON COLUMN "public"."input_electricity_cost"."flat_electricity" IS '平时段用电量';
COMMENT ON COLUMN "public"."input_electricity_cost"."valley_electricity" IS '谷时段用电量';
COMMENT ON COLUMN "public"."input_electricity_cost"."deep_valley_electricity" IS '深时段用电量';
COMMENT ON TABLE "public"."input_electricity_cost" IS '电费手工录入表';

-- ----------------------------
-- Records of input_electricity_cost
-- ----------------------------
INSERT INTO "public"."input_electricity_cost" VALUES ('13063c92-f7f4-4346-9d62-b17338e94f3b', 'MONTH', '2025-06-04 14:33:21', 'admin', '2025-06-04 14:33:31.185', 'admin', NULL, 6.00, '2025-06', 1.00, 1.00, 1.00, 2.00, 2.00, 1.00, NULL);

-- ----------------------------
-- Table structure for knowledge_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."knowledge_base";
CREATE TABLE "public"."knowledge_base" (
  "id" int8 NOT NULL,
  "title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2 NOT NULL,
  "content" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "del_flag" bool NOT NULL DEFAULT false,
  "create_time" timestamp(0),
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(0),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."knowledge_base"."id" IS 'id';
COMMENT ON COLUMN "public"."knowledge_base"."title" IS '标题';
COMMENT ON COLUMN "public"."knowledge_base"."type" IS '能源类型(0:电;1:水;2:天然气;3:蒸汽)';
COMMENT ON COLUMN "public"."knowledge_base"."content" IS '内容';
COMMENT ON COLUMN "public"."knowledge_base"."del_flag" IS '删除标志';
COMMENT ON COLUMN "public"."knowledge_base"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."knowledge_base"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."knowledge_base"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."knowledge_base"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."knowledge_base"."remark" IS '备注';
COMMENT ON TABLE "public"."knowledge_base" IS '知识库';

-- ----------------------------
-- Records of knowledge_base
-- ----------------------------
INSERT INTO "public"."knowledge_base" VALUES (1930143006906638337, '22', 2, '22', 'f', '2025-06-04 14:02:08', 'admin', '2025-06-04 14:02:25', 'admin', NULL);
INSERT INTO "public"."knowledge_base" VALUES (1930142932826841089, '11', 1, '11', 't', '2025-06-04 14:01:50', 'admin', '2025-06-04 14:02:37', 'admin', NULL);

-- ----------------------------
-- Table structure for knowledge_base_file
-- ----------------------------
DROP TABLE IF EXISTS "public"."knowledge_base_file";
CREATE TABLE "public"."knowledge_base_file" (
  "id" int8 NOT NULL,
  "knowledge_base_id" int8 NOT NULL,
  "url" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."knowledge_base_file"."id" IS 'id';
COMMENT ON COLUMN "public"."knowledge_base_file"."knowledge_base_id" IS '知识库id';
COMMENT ON COLUMN "public"."knowledge_base_file"."url" IS '文件地址';
COMMENT ON TABLE "public"."knowledge_base_file" IS '知识库附件表';

-- ----------------------------
-- Records of knowledge_base_file
-- ----------------------------

-- ----------------------------
-- Table structure for meter
-- ----------------------------
DROP TABLE IF EXISTS "public"."meter";
CREATE TABLE "public"."meter" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "meter_name" varchar(150) COLLATE "pg_catalog"."default",
  "meter_type" varchar(2) COLLATE "pg_catalog"."default",
  "model_number" varchar(150) COLLATE "pg_catalog"."default",
  "measure_range" varchar(150) COLLATE "pg_catalog"."default",
  "manufacturer" varchar(255) COLLATE "pg_catalog"."default",
  "person_charge" varchar(200) COLLATE "pg_catalog"."default",
  "installaction_location" varchar(300) COLLATE "pg_catalog"."default",
  "start_time" date,
  "check_cycle" int4,
  "reminder_cycle" int4,
  "meter_status" varchar(2) COLLATE "pg_catalog"."default",
  "del_flage" varchar(2) COLLATE "pg_catalog"."default" DEFAULT 'N'::character varying,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(0),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "putrun_time" date,
  "energy_type" varchar(255) COLLATE "pg_catalog"."default",
  "max_allowable_power" varchar(255) COLLATE "pg_catalog"."default",
  "wire_diameter" varchar(255) COLLATE "pg_catalog"."default",
  "gateway_id" varchar(200) COLLATE "pg_catalog"."default",
  "gateway_name" varchar(255) COLLATE "pg_catalog"."default",
  "keepalive_time" timestamp(0)
)
;
COMMENT ON COLUMN "public"."meter"."id" IS '主键';
COMMENT ON COLUMN "public"."meter"."code" IS '编码';
COMMENT ON COLUMN "public"."meter"."meter_name" IS '器具名称';
COMMENT ON COLUMN "public"."meter"."meter_type" IS '种类';
COMMENT ON COLUMN "public"."meter"."model_number" IS '规格型号';
COMMENT ON COLUMN "public"."meter"."measure_range" IS '测量范围';
COMMENT ON COLUMN "public"."meter"."manufacturer" IS '生产厂商';
COMMENT ON COLUMN "public"."meter"."person_charge" IS '负责人';
COMMENT ON COLUMN "public"."meter"."installaction_location" IS '安装位置';
COMMENT ON COLUMN "public"."meter"."start_time" IS '起始时间';
COMMENT ON COLUMN "public"."meter"."check_cycle" IS '检定周期';
COMMENT ON COLUMN "public"."meter"."reminder_cycle" IS '提醒周期';
COMMENT ON COLUMN "public"."meter"."meter_status" IS '状态';
COMMENT ON COLUMN "public"."meter"."del_flage" IS '逻辑删除标志,Y已删除,N未删除';
COMMENT ON COLUMN "public"."meter"."remark" IS '备注';
COMMENT ON COLUMN "public"."meter"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."meter"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."meter"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."meter"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."meter"."putrun_time" IS '投运时间';
COMMENT ON COLUMN "public"."meter"."energy_type" IS '检测能源类型';
COMMENT ON COLUMN "public"."meter"."max_allowable_power" IS '最大允许功率';
COMMENT ON COLUMN "public"."meter"."wire_diameter" IS '线经';
COMMENT ON COLUMN "public"."meter"."gateway_id" IS '网关主键';
COMMENT ON COLUMN "public"."meter"."gateway_name" IS '网关名称';
COMMENT ON COLUMN "public"."meter"."keepalive_time" IS '心跳时间';
COMMENT ON TABLE "public"."meter" IS '计量器具档案';

-- ----------------------------
-- Records of meter
-- ----------------------------
INSERT INTO "public"."meter" VALUES ('f15fc88f-96e4-4e80-9e8e-0a3a33eb8690', '222180009660', '1#电表', '1', NULL, NULL, NULL, NULL, '1925847136602066945', '2025-05-01', 5, 5, NULL, 'N', NULL, '2025-05-23 17:32:50.744', 'admin', NULL, NULL, '2025-05-01', 'electric', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter" VALUES ('1f131d5e-cd35-4e81-86e1-da0310de1ac2', '222180009642', '3#电表', '1', NULL, NULL, NULL, NULL, '1925847136602066945', '2025-05-01', 2, 2, NULL, 'N', NULL, '2025-05-24 10:48:45.5', 'admin', NULL, NULL, '2025-05-01', 'electric', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter" VALUES ('fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', '222180009639', '2#电表', '1', NULL, NULL, NULL, NULL, '1925847136602066945', '2025-05-02', 3, 4, '1', 'N', NULL, '2025-05-23 17:39:56', 'admin', '2025-05-24 11:03:34', 'admin', '2025-05-01', 'electric', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for meter_annex
-- ----------------------------
DROP TABLE IF EXISTS "public"."meter_annex";
CREATE TABLE "public"."meter_annex" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "file_name" varchar(500) COLLATE "pg_catalog"."default",
  "file_suffix" varchar(10) COLLATE "pg_catalog"."default",
  "file_path" varchar(500) COLLATE "pg_catalog"."default",
  "del_flage" varchar(2) COLLATE "pg_catalog"."default" DEFAULT 'N'::character varying,
  "create_time" timestamp(6) DEFAULT now(),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "meter_id" varchar(36) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."meter_annex"."id" IS '主键';
COMMENT ON COLUMN "public"."meter_annex"."file_name" IS '文件名';
COMMENT ON COLUMN "public"."meter_annex"."file_suffix" IS '文件后缀';
COMMENT ON COLUMN "public"."meter_annex"."file_path" IS '文件路径';
COMMENT ON COLUMN "public"."meter_annex"."del_flage" IS '删除标志Y 删除  N未删除';
COMMENT ON COLUMN "public"."meter_annex"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."meter_annex"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."meter_annex"."update_time" IS '修改日期';
COMMENT ON COLUMN "public"."meter_annex"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."meter_annex"."meter_id" IS '关联meter.id';
COMMENT ON TABLE "public"."meter_annex" IS '计量器具附件';

-- ----------------------------
-- Records of meter_annex
-- ----------------------------

-- ----------------------------
-- Table structure for meter_point
-- ----------------------------
DROP TABLE IF EXISTS "public"."meter_point";
CREATE TABLE "public"."meter_point" (
  "point_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "point_type" varchar(10) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "unit_id" varchar(10) COLLATE "pg_catalog"."default",
  "meter_id" varchar(50) COLLATE "pg_catalog"."default",
  "point_category" varchar(255) COLLATE "pg_catalog"."default",
  "order_num" int8,
  "equipment" varchar(255) COLLATE "pg_catalog"."default",
  "energy_id" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "table_value" varchar(50) COLLATE "pg_catalog"."default",
  "step_min" varchar(50) COLLATE "pg_catalog"."default",
  "step_max" varchar(50) COLLATE "pg_catalog"."default",
  "min_value" varchar(50) COLLATE "pg_catalog"."default",
  "max_value" varchar(50) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."meter_point"."point_id" IS '主键';
COMMENT ON COLUMN "public"."meter_point"."name" IS '指标名称';
COMMENT ON COLUMN "public"."meter_point"."code" IS '指标编码';
COMMENT ON COLUMN "public"."meter_point"."point_type" IS '指标类型，0-采集类，1-计算指标';
COMMENT ON COLUMN "public"."meter_point"."remark" IS '备注';
COMMENT ON COLUMN "public"."meter_point"."unit_id" IS '单位主键';
COMMENT ON COLUMN "public"."meter_point"."meter_id" IS '计量器具主键';
COMMENT ON COLUMN "public"."meter_point"."point_category" IS '系统指标分类，1-能源类，2-产品类，3-能效类，4-经营类，5-其他';
COMMENT ON COLUMN "public"."meter_point"."order_num" IS '模型权限字段';
COMMENT ON COLUMN "public"."meter_point"."equipment" IS '设备ID';
COMMENT ON COLUMN "public"."meter_point"."energy_id" IS '能源品种';
COMMENT ON COLUMN "public"."meter_point"."table_value" IS '表头值';
COMMENT ON COLUMN "public"."meter_point"."step_min" IS '步长最小值';
COMMENT ON COLUMN "public"."meter_point"."step_max" IS '步长最大值';
COMMENT ON COLUMN "public"."meter_point"."min_value" IS '最小值';
COMMENT ON COLUMN "public"."meter_point"."max_value" IS '最大值';
COMMENT ON COLUMN "public"."meter_point"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."meter_point"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."meter_point"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."meter_point"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."meter_point" IS '计量器具指标点位信息';

-- ----------------------------
-- Records of meter_point
-- ----------------------------
INSERT INTO "public"."meter_point" VALUES ('789dac12-37c9-4730-a76b-23a21b6ebe40', '有功电量', '222180009640_ActiveElectricity', 'COLLECT', NULL, '千瓦', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('1f9fa41d-9198-419b-89eb-31c1d0f5242c', '有功功率', '222180009640_ActivePow', 'COLLECT', NULL, '千瓦', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('2cb33c07-8a77-40d8-bb42-7d459906404c', '正向有功总电能', '222180009640_ActiveZT', 'COLLECT', NULL, 'kWh', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('02d08b9f-f371-4f9f-adad-1285c4184de6', '补偿功率', '222180009640_BCGL', 'COLLECT', NULL, NULL, '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('6c0b3963-2466-498d-b270-b638a0c1f09a', 'A相电流', '222180009640_CurrentA', 'COLLECT', NULL, '安培', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('643218f4-bd67-4ba3-a1ef-183d8b925239', 'B相电流', '222180009640_CurrentB', 'COLLECT', NULL, '安培', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('36a36aa6-37a1-41dc-b49c-4824017e8cea', 'C相电流', '222180009640_CurrentC', 'COLLECT', NULL, '安培', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('a3c4889a-8ce1-45b4-a94e-769af8ac6e97', '反向有功总电能', '222180009640_Exp', 'COLLECT', NULL, 'kWh', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('142fc66f-bfa4-4c06-8b02-1c9336c07170', '进电频率', '222180009640_JDPL', 'COLLECT', NULL, NULL, '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('de60bfad-7fb0-45ce-96a1-77718f191c7a', '最大功率', '222180009640_MaxPower', 'COLLECT', NULL, '千瓦', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('e3a89d47-a169-4a56-8489-f9a6f06b6c0b', '无功电量', '222180009640_NoActiveElectricity', 'COLLECT', NULL, NULL, '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('009877a5-48c6-40ff-a17f-cc72fd1ab158', '无功功率', '222180009640_NoPow', 'COLLECT', NULL, '千瓦', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('80d26f0c-2077-48d2-a206-364a6bac5847', '视在功率', '222180009640_PowerVA', 'COLLECT', NULL, '伏安', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('b89b3a32-7582-4349-aee5-0136a5bd165c', 'A相功率因数', '222180009640_PowFactorA', 'COLLECT', NULL, NULL, '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('9f5642b1-58cb-4962-a77d-5506771807e6', 'B相功率因数', '222180009640_PowFactorB', 'COLLECT', NULL, NULL, '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('da452445-e2fd-48ca-a92e-f89ada2e03fb', 'C相功率因数', '222180009640_PowFactorC', 'COLLECT', NULL, NULL, '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('e207ac94-2d20-45e6-81cd-dafa70b3f367', '总功率因数', '222180009640_PowFactorT', 'COLLECT', NULL, NULL, '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('a0165c78-0eda-453f-93e6-9e95b8dabaec', 'A相电压', '222180009640_VoltageA', 'COLLECT', NULL, '伏特', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('74780709-4a87-4aab-92e1-0f4d8faf010e', 'B相电压', '222180009640_VoltageB', 'COLLECT', NULL, '伏特', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('602440bf-4a7b-402c-b47a-b6329b7aeae8', 'C相电压', '222180009640_VoltageC', 'COLLECT', NULL, '伏特', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('0332c31d-0546-4def-8cc1-3db9cd05c8e1', 'AB线电压', '222180009640_VoltageUAB', 'COLLECT', NULL, '伏特', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('fd9ef4bb-cb86-4387-b62a-32cfde4bf726', 'BC线电压', '222180009640_VoltageUBC', 'COLLECT', NULL, '伏特', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('b5c727f0-34ce-4f45-8dc8-3ba0349c344c', 'CA线电压', '222180009640_VoltageUCA', 'COLLECT', NULL, '伏特', '0030a440-e21b-46f6-b424-7be2d4dbd35e', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('0394d6ff-0f15-405c-84ab-b72634c2894a', '有功电量', '222180009639_ActiveElectricity', 'COLLECT', NULL, '千瓦', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('8c89327b-c5ed-46c0-8e84-8225f63facd1', '有功功率', '222180009639_ActivePow', 'COLLECT', NULL, '千瓦', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('54fe8d6a-5493-4190-8e45-15f251be7a5f', '正向有功总电能', '222180009639_ActiveZT', 'COLLECT', NULL, 'kWh', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('b983230e-123a-4aa8-b78f-90cd4a861c3b', '补偿功率', '222180009639_BCGL', 'COLLECT', NULL, NULL, 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('78bac8a1-54fc-43b2-b506-fd854fb344a3', 'A相电流', '222180009639_CurrentA', 'COLLECT', NULL, '安培', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('059faea6-d1fd-47fe-ad5e-d797c8b0b207', 'B相电流', '222180009639_CurrentB', 'COLLECT', NULL, '安培', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('d0cc29be-748e-4706-9225-9fb2765d1ce5', 'C相电流', '222180009639_CurrentC', 'COLLECT', NULL, '安培', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('63d50a9c-5325-440f-8c04-0d264d6b4552', '反向有功总电能', '222180009639_Exp', 'COLLECT', NULL, 'kWh', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('1d923971-3876-4f19-860f-8cc854df767f', '进电频率', '222180009639_JDPL', 'COLLECT', NULL, NULL, 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('cad23c1c-13ce-44c8-9993-fca0ea3fceee', '最大功率', '222180009639_MaxPower', 'COLLECT', NULL, '千瓦', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('0ee49991-b5ee-4f83-a872-244e90aab5a0', '无功电量', '222180009639_NoActiveElectricity', 'COLLECT', NULL, NULL, 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('2cef8442-48ef-4cf2-a269-2753c064e7c5', '无功功率', '222180009639_NoPow', 'COLLECT', NULL, '千瓦', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('49951f6a-de2e-45d5-8e12-bf2dcb9bbf10', '视在功率', '222180009639_PowerVA', 'COLLECT', NULL, '伏安', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('15706106-0479-447d-8b40-97d46ca789cf', 'A相功率因数', '222180009639_PowFactorA', 'COLLECT', NULL, NULL, 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('5d9c27f6-48e9-494a-b9b2-51a3ed5886f5', 'B相功率因数', '222180009639_PowFactorB', 'COLLECT', NULL, NULL, 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('22988b3c-c593-4d89-b3ef-f1703c0e5fac', 'C相功率因数', '222180009639_PowFactorC', 'COLLECT', NULL, NULL, 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('adfd069d-16c0-42b3-b7bd-f989498cfd9d', '总功率因数', '222180009639_PowFactorT', 'COLLECT', NULL, NULL, 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('0863e5d6-e569-40ee-92e9-f1201066bf11', 'A相电压', '222180009639_VoltageA', 'COLLECT', NULL, '伏特', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('889e7e97-fdcf-4b41-83f5-37f5ae5d8ba0', 'B相电压', '222180009639_VoltageB', 'COLLECT', NULL, '伏特', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('2e77b451-4211-4ed2-884e-5d8803eee4e5', 'C相电压', '222180009639_VoltageC', 'COLLECT', NULL, '伏特', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('77204ba6-4c0c-4e6b-9ba1-4e6e75636196', 'AB线电压', '222180009639_VoltageUAB', 'COLLECT', NULL, '伏特', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('3b168154-95df-4706-ba24-530cfe449572', 'BC线电压', '222180009639_VoltageUBC', 'COLLECT', NULL, '伏特', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('c73ca0cc-9a65-433b-8216-b9d05a3565b8', 'CA线电压', '222180009639_VoltageUCA', 'COLLECT', NULL, '伏特', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('a01e5c96-be69-43b6-b0eb-83866d42a869', '加工车间用压缩空气表03', 'JGCJYSKQ_04', 'STATISTIC', NULL, 't', NULL, '2', 0, NULL, 'electric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('3e4583cf-8b92-415a-b830-27939a2462e1', '一中低压配电室1#变累积量', 'YGDYPDS_LJL', 'STATISTIC', NULL, 't', NULL, '2', 0, NULL, 'electric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('286d41b7-40e7-4d07-83d6-4ab82b564e6b', '加工车间冷却系统用表', 'JGCJLQXTYB', NULL, NULL, 'WF', NULL, '1', 0, NULL, 'electric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."meter_point" VALUES ('fd435788-c732-4561-9b85-d83343778483', '一中低压配电室1#泵累积量', 'YZDYPDS_BLJL', NULL, NULL, NULL, NULL, '2', 0, NULL, 'electric', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for model
-- ----------------------------
DROP TABLE IF EXISTS "public"."model";
CREATE TABLE "public"."model" (
  "model_code" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "model_name" varchar(20) COLLATE "pg_catalog"."default",
  "is_show" int2,
  "model_type" varchar(10) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."model"."model_code" IS '模型编码';
COMMENT ON COLUMN "public"."model"."model_name" IS '模型名称';
COMMENT ON COLUMN "public"."model"."is_show" IS '是否显示';
COMMENT ON COLUMN "public"."model"."model_type" IS '模型类型';
COMMENT ON TABLE "public"."model" IS '数据模型';

-- ----------------------------
-- Records of model
-- ----------------------------
INSERT INTO "public"."model" VALUES ('JCZBK_CODE', '基础指标库', 1, 'index');
INSERT INTO "public"."model" VALUES ('HBGFFD', '光伏发电', 1, 'index');
INSERT INTO "public"."model" VALUES ('JFPGMX', '尖峰平谷模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('COMPREHENSIVE_CODE', '首页看板模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('HBPDS', '配电室', 1, 'node');
INSERT INTO "public"."model" VALUES ('ElectricityModel', '电力SVG模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('CQNHFX', '厂区能耗分析模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('HBDLPH', '电力平衡模型', 1, 'node');
INSERT INTO "public"."model" VALUES ('YSCJMX', '实时监测模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('ZHNHFX', '综合能耗分析模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('PROCESS_FLOW', '工艺流程图SVG监测模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('WaterSVGModel', '用水SVG模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('MQSVGModel', '煤气SVG模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('Energy_YOY', '能耗同环比分析模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('EnergyLossModel', '能源损失模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('NYCBMX', '能源成本模型', 1, 'index');
INSERT INTO "public"."model" VALUES ('CPDHFX', '产品单耗分析', 1, 'index');
INSERT INTO "public"."model" VALUES ('BJGL', '报警中心管理', 1, 'index');
INSERT INTO "public"."model" VALUES ('GXNH', '工序能耗分析', 1, 'index');
INSERT INTO "public"."model" VALUES ('ZDSBNH', '重点设备能耗分析', 1, 'index');
INSERT INTO "public"."model" VALUES ('ZLYNFX', '支路用能分析', 1, 'index');
INSERT INTO "public"."model" VALUES ('FXYN_FX_CDOE', '分项用能分析', 1, 'index');

-- ----------------------------
-- Table structure for model_node
-- ----------------------------
DROP TABLE IF EXISTS "public"."model_node";
CREATE TABLE "public"."model_node" (
  "node_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" varchar(36) COLLATE "pg_catalog"."default",
  "address" varchar(255) COLLATE "pg_catalog"."default",
  "model_code" varchar(30) COLLATE "pg_catalog"."default",
  "order_num" int4,
  "node_category" varchar(10) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."model_node"."node_id" IS '主键';
COMMENT ON COLUMN "public"."model_node"."code" IS '编码';
COMMENT ON COLUMN "public"."model_node"."name" IS '名称';
COMMENT ON COLUMN "public"."model_node"."parent_id" IS '父节点 id';
COMMENT ON COLUMN "public"."model_node"."address" IS '地址';
COMMENT ON COLUMN "public"."model_node"."model_code" IS '模型 id';
COMMENT ON COLUMN "public"."model_node"."order_num" IS '序号';
COMMENT ON COLUMN "public"."model_node"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."model_node"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."model_node"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."model_node"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."model_node" IS '模型节点';

-- ----------------------------
-- Records of model_node
-- ----------------------------
INSERT INTO "public"."model_node" VALUES ('20fc4a28-2c22-41f6-b49f-91754e7ecee9', 'JCZB_ZC', '总厂', NULL, 'JCZB_ZC,', 'JCZBK_CODE', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."model_node" VALUES ('3b66ea59-fd69-4d73-a830-0b5b0b767d80', 'SSJC_ZC', '总厂', NULL, 'SSJC_ZC,', 'YSCJMX', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."model_node" VALUES ('76307d81-5e3c-461b-bbf0-8e279dd58d40', 'ZC', '总厂', NULL, 'ZC,', 'BJGL', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."model_node" VALUES ('638174a3-b673-432d-a25f-bc0f225f775c', 'CS', '测试', '76307d81-5e3c-461b-bbf0-8e279dd58d40', 'ZC,CS,', 'BJGL', NULL, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."model_node" VALUES ('6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', 'SYZC', '总厂', NULL, 'SYZC,', 'COMPREHENSIVE_CODE', NULL, '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."model_node" VALUES ('aadad9cf-b73e-4a1a-99da-338ed2172525', 'KB_DB3', '组装车间高压配电室九中1#变', '6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', 'SYZC,KB_DB3,', 'COMPREHENSIVE_CODE', NULL, '2', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for node_device
-- ----------------------------
DROP TABLE IF EXISTS "public"."node_device";
CREATE TABLE "public"."node_device" (
  "node_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "device_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."node_device"."node_id" IS '模型节点 ID';
COMMENT ON COLUMN "public"."node_device"."device_id" IS '设备 ID';
COMMENT ON TABLE "public"."node_device" IS '节点与设备关联';

-- ----------------------------
-- Records of node_device
-- ----------------------------
INSERT INTO "public"."node_device" VALUES ('20fc4a28-2c22-41f6-b49f-91754e7ecee9', 'f15fc88f-96e4-4e80-9e8e-0a3a33eb8690');
INSERT INTO "public"."node_device" VALUES ('20fc4a28-2c22-41f6-b49f-91754e7ecee9', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68');
INSERT INTO "public"."node_device" VALUES ('638174a3-b673-432d-a25f-bc0f225f775c', '1f131d5e-cd35-4e81-86e1-da0310de1ac2');
INSERT INTO "public"."node_device" VALUES ('638174a3-b673-432d-a25f-bc0f225f775c', 'f15fc88f-96e4-4e80-9e8e-0a3a33eb8690');
INSERT INTO "public"."node_device" VALUES ('638174a3-b673-432d-a25f-bc0f225f775c', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68');
INSERT INTO "public"."node_device" VALUES ('6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', 'f15fc88f-96e4-4e80-9e8e-0a3a33eb8690');
INSERT INTO "public"."node_device" VALUES ('6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68');
INSERT INTO "public"."node_device" VALUES ('6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '1f131d5e-cd35-4e81-86e1-da0310de1ac2');
INSERT INTO "public"."node_device" VALUES ('aadad9cf-b73e-4a1a-99da-338ed2172525', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68');
INSERT INTO "public"."node_device" VALUES ('3b66ea59-fd69-4d73-a830-0b5b0b767d80', 'fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68');

-- ----------------------------
-- Table structure for node_energy
-- ----------------------------
DROP TABLE IF EXISTS "public"."node_energy";
CREATE TABLE "public"."node_energy" (
  "node_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "energy_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."node_energy"."node_id" IS '模型节点 ID';
COMMENT ON COLUMN "public"."node_energy"."energy_id" IS '能源 ID';
COMMENT ON TABLE "public"."node_energy" IS '节点能源品种关联';

-- ----------------------------
-- Records of node_energy
-- ----------------------------

-- ----------------------------
-- Table structure for node_point
-- ----------------------------
DROP TABLE IF EXISTS "public"."node_point";
CREATE TABLE "public"."node_point" (
  "node_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "point_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."node_point"."node_id" IS '节点主键';
COMMENT ON COLUMN "public"."node_point"."point_id" IS '指标主键';
COMMENT ON TABLE "public"."node_point" IS '模型节点与指标的关联关系';

-- ----------------------------
-- Records of node_point
-- ----------------------------
INSERT INTO "public"."node_point" VALUES ('20fc4a28-2c22-41f6-b49f-91754e7ecee9', 'a01e5c96-be69-43b6-b0eb-83866d42a869');
INSERT INTO "public"."node_point" VALUES ('20fc4a28-2c22-41f6-b49f-91754e7ecee9', '3e4583cf-8b92-415a-b830-27939a2462e1');
INSERT INTO "public"."node_point" VALUES ('20fc4a28-2c22-41f6-b49f-91754e7ecee9', '090f3f44-ccdd-4447-bb78-c72c43298765');
INSERT INTO "public"."node_point" VALUES ('20fc4a28-2c22-41f6-b49f-91754e7ecee9', '9e2d73cb-1d87-4e05-9bbc-233b24ff9e62');
INSERT INTO "public"."node_point" VALUES ('20fc4a28-2c22-41f6-b49f-91754e7ecee9', '286d41b7-40e7-4d07-83d6-4ab82b564e6b');
INSERT INTO "public"."node_point" VALUES ('20fc4a28-2c22-41f6-b49f-91754e7ecee9', 'fd435788-c732-4561-9b85-d83343778483');
INSERT INTO "public"."node_point" VALUES ('638174a3-b673-432d-a25f-bc0f225f775c', 'a01e5c96-be69-43b6-b0eb-83866d42a869');
INSERT INTO "public"."node_point" VALUES ('638174a3-b673-432d-a25f-bc0f225f775c', '3e4583cf-8b92-415a-b830-27939a2462e1');
INSERT INTO "public"."node_point" VALUES ('638174a3-b673-432d-a25f-bc0f225f775c', '8c89327b-c5ed-46c0-8e84-8225f63facd1');
INSERT INTO "public"."node_point" VALUES ('638174a3-b673-432d-a25f-bc0f225f775c', '0394d6ff-0f15-405c-84ab-b72634c2894a');
INSERT INTO "public"."node_point" VALUES ('6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '3e4583cf-8b92-415a-b830-27939a2462e1');
INSERT INTO "public"."node_point" VALUES ('6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '0394d6ff-0f15-405c-84ab-b72634c2894a');
INSERT INTO "public"."node_point" VALUES ('6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '8c89327b-c5ed-46c0-8e84-8225f63facd1');
INSERT INTO "public"."node_point" VALUES ('aadad9cf-b73e-4a1a-99da-338ed2172525', '3e4583cf-8b92-415a-b830-27939a2462e1');
INSERT INTO "public"."node_point" VALUES ('aadad9cf-b73e-4a1a-99da-338ed2172525', 'a01e5c96-be69-43b6-b0eb-83866d42a869');
INSERT INTO "public"."node_point" VALUES ('aadad9cf-b73e-4a1a-99da-338ed2172525', '0394d6ff-0f15-405c-84ab-b72634c2894a');
INSERT INTO "public"."node_point" VALUES ('aadad9cf-b73e-4a1a-99da-338ed2172525', '8c89327b-c5ed-46c0-8e84-8225f63facd1');
INSERT INTO "public"."node_point" VALUES ('3b66ea59-fd69-4d73-a830-0b5b0b767d80', 'a01e5c96-be69-43b6-b0eb-83866d42a869');
INSERT INTO "public"."node_point" VALUES ('3b66ea59-fd69-4d73-a830-0b5b0b767d80', '3e4583cf-8b92-415a-b830-27939a2462e1');
INSERT INTO "public"."node_point" VALUES ('3b66ea59-fd69-4d73-a830-0b5b0b767d80', '0394d6ff-0f15-405c-84ab-b72634c2894a');
INSERT INTO "public"."node_point" VALUES ('3b66ea59-fd69-4d73-a830-0b5b0b767d80', '8c89327b-c5ed-46c0-8e84-8225f63facd1');

-- ----------------------------
-- Table structure for node_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."node_product";
CREATE TABLE "public"."node_product" (
  "node_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."node_product"."node_id" IS '模型节点 ID';
COMMENT ON COLUMN "public"."node_product"."product_id" IS '产品 ID';
COMMENT ON TABLE "public"."node_product" IS '节点产品关联表';

-- ----------------------------
-- Records of node_product
-- ----------------------------

-- ----------------------------
-- Table structure for point_template
-- ----------------------------
DROP TABLE IF EXISTS "public"."point_template";
CREATE TABLE "public"."point_template" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(20) COLLATE "pg_catalog"."default",
  "name" varchar(20) COLLATE "pg_catalog"."default",
  "device_type" varchar(10) COLLATE "pg_catalog"."default",
  "unit" varchar(10) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "gateway_key" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."point_template"."id" IS '主键';
COMMENT ON COLUMN "public"."point_template"."code" IS '参数编码';
COMMENT ON COLUMN "public"."point_template"."name" IS '参数名称';
COMMENT ON COLUMN "public"."point_template"."device_type" IS '参数所属类型';
COMMENT ON COLUMN "public"."point_template"."unit" IS '单位';
COMMENT ON COLUMN "public"."point_template"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."point_template"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."point_template"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."point_template"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."point_template"."remark" IS '备注';
COMMENT ON COLUMN "public"."point_template"."gateway_key" IS '采集编码';
COMMENT ON TABLE "public"."point_template" IS '采集点位模板';

-- ----------------------------
-- Records of point_template
-- ----------------------------
INSERT INTO "public"."point_template" VALUES ('541abaa2-c8f8-486f-9f3a-0de24fba50e7', 'MaxPower', '最大功率', '1', '千瓦', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('2ff6c9d5-956b-4fea-9c26-762059b9bd3d', 'StFlowrate', '标准流量', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('4833f681-bef3-4ae2-9660-4c5f1814242a', 'GasTemp', '温度', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('bb2cea6a-5232-49df-a9fe-f02af5a792ac', 'StCuSpeed', '标准流速', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('8c14b009-5549-416b-8200-d308d68bc402', 'StTotal', '标况累计', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('5ef13f0c-a270-461a-a41c-0a196308a526', 'SSLL', '瞬时流量', '2', 'm³h', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('1efa9c33-ee82-4d27-86ec-8af152c741fa', 'PLCFK', 'PLC反馈', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('c2f7dfd3-fb02-4a10-9357-275192865a35', 'SSPL', '频率实时显示', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('9d1e8a4a-b072-4314-a513-763819e50858', 'SSDY', '电压实时显示', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('008654cd-f638-4777-bb05-c2529bb7e867', 'SSBJ', '报警信号实时显示', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('518258bc-0beb-45c5-8047-7ea4ad1e1429', 'SSDL', '电流实时显示', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('133dcb56-0dc9-474c-bc2c-9747234c6c79', 'XFWD', '新风温度', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('e4558ee9-48bc-4364-a5a4-eeda5a937153', 'SFWD', '送风温度', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('6e006f92-dd43-4e1d-b9c2-fe73a4b1217e', 'SD', '湿度', '4', '%', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('121483b2-ac58-4fd7-8c60-0d1fd82d5614', 'WD', '温度', '4', '℃', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('4a8cfdc9-681e-40f3-99d6-48eb859e75b9', 'YL', '压力', '5', 'Pa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('76943af1-c1e4-47a1-97eb-809b4b253305', 'Pressure', '压力', '6', 'Pa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('e85c54df-64aa-4f00-88a1-66d1cc0bbcdb', 'Flowrate', '瞬时流量', '6', 'm³h', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('78d5b8e9-b54a-4168-974c-2337d690cec5', 'Temp', '温度', '6', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('ac7e5b3e-85aa-438d-9103-3e3ab25a0764', 'SteamTotal', '累计流量', '6', 'm³h', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('842f6982-1b49-4d89-83e6-2bebe600bb50', 'Current', '电流', '6', 'A', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('af24128d-cf0a-4416-bd04-4b3fb77862bb', 'DeltaP', '压差', '6', 'Pa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('e9f82133-0d3a-4756-b302-0a4597c0f745', 'Density', '密度', '6', 'kg/m³', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('ae859af8-9468-4c12-be8c-691b6e965dff', 'Frequency', '频率', '6', 'Hz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('4aa2e94e-6aed-4002-ac8c-d7f2fde4b0c3', 'StTotal', '累计流量', '7', 'm³h', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('ab43a7a0-9092-44ca-8523-a27b98d38e1e', 'caiji01', '采集01', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('e86dd993-4718-4091-ad60-9f3a17f15d03', 'SSLL', '瞬时流量', '7', 'm³', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('f9456186-9411-47e2-9e81-e292e3041ce1', 'Pressure', '压力', '7', 'Pa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('26b0e6f5-7317-4bb0-9b51-673de94f67d0', 'AccumulatedGasVolume', '天然气累计气量', '10', 'm³', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('caaa0c77-8128-47dd-9c03-4c42d6f86fba', 'InstantaneousFlow', '天然气瞬时流量', '10', 'm³h', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('e3a6304f-fbfa-42e1-9de5-792be7462886', 'AccumulatedFlow', '压缩空气累计流量', '5', 'm³', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('c1919516-a93e-4d6a-9447-1f18b642b827', 'GasTemperature', '天然气气体温度', '10', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('b5674745-b454-4fdd-9731-5beb6aa6f3c1', 'Tempe', '温度', '7', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('848b7ca4-bc2e-4fa1-9d49-1c95786f0394', 'ActiveElectricity', '有功电量', '1', '千瓦', NULL, NULL, NULL, NULL, NULL, 'Pt');
INSERT INTO "public"."point_template" VALUES ('088c9c97-fd8e-4af4-a33f-2c0bf218ded9', 'ActivePow', '有功功率', '1', '千瓦', NULL, NULL, NULL, NULL, NULL, 'Pw');
INSERT INTO "public"."point_template" VALUES ('d5ea0ce9-4fbf-4cf5-bd19-dfc831e8076d', 'PowFactorT', '总功率因数', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Q');
INSERT INTO "public"."point_template" VALUES ('170d5254-6ec4-4a0d-bce3-fd063ae0fab3', 'CurrentA', 'A相电流', '1', '安培', NULL, NULL, NULL, NULL, NULL, 'Ia');
INSERT INTO "public"."point_template" VALUES ('b2453e39-0a39-4238-bb1d-7244eda5c5bc', 'BCGL', '补偿功率', '1', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO "public"."point_template" VALUES ('515702f5-604c-4ca3-8cd1-661f7f7b616b', 'CurrentB', 'B相电流', '1', '安培', NULL, NULL, NULL, NULL, NULL, 'Ib');
INSERT INTO "public"."point_template" VALUES ('51811d66-8631-4ce2-ba75-767c412905a8', 'CurrentC', 'C相电流', '1', '安培', NULL, NULL, NULL, NULL, NULL, 'Ic');
INSERT INTO "public"."point_template" VALUES ('3bbedc0d-9175-40e5-855d-7f9022a202e0', 'JDPL', '进电频率', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'hz');
INSERT INTO "public"."point_template" VALUES ('b9d083e9-a1cd-4a90-8dd7-f9fba6056f70', 'PowerVA', '视在功率', '1', '伏安', NULL, NULL, NULL, NULL, NULL, 'S');
INSERT INTO "public"."point_template" VALUES ('c87b1858-8a34-4d4e-be5c-850a74712588', 'NoPow', '无功功率', '1', '千瓦', NULL, NULL, NULL, NULL, NULL, 'Pq');
INSERT INTO "public"."point_template" VALUES ('491a88a4-56c1-4b45-8f17-16a1d9b2ff68', 'NoActiveElectricity', '无功电量', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Qr');
INSERT INTO "public"."point_template" VALUES ('39fadfaf-dd03-46bb-8f3d-626a7be2ff89', 'PowFactorA', 'A相功率因数', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Qa');
INSERT INTO "public"."point_template" VALUES ('d31eb58e-890b-4b8b-b2cc-e1d8fc1ba0bc', 'PowFactorB', 'B相功率因数', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Qb');
INSERT INTO "public"."point_template" VALUES ('63b1c263-a575-464d-9748-16e6c9248ef2', 'PowFactorC', 'C相功率因数', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Qc');
INSERT INTO "public"."point_template" VALUES ('909c6b8e-5dbb-4e3f-b3ad-c80d15ec952b', 'VoltageA', 'A相电压', '1', '伏特', NULL, NULL, NULL, NULL, NULL, 'Ua');
INSERT INTO "public"."point_template" VALUES ('5a4a34b5-2445-4216-888f-001d77130812', 'VoltageB', 'B相电压', '1', '伏特', NULL, NULL, NULL, NULL, NULL, 'Ub');
INSERT INTO "public"."point_template" VALUES ('0c28437b-4a35-4fe0-9350-096c26a9a097', 'VoltageC', 'C相电压', '1', '伏特', NULL, NULL, NULL, NULL, NULL, 'Uc');
INSERT INTO "public"."point_template" VALUES ('2fe4f0ca-2a93-404d-b649-4010e28ffb8f', 'VoltageUBC', 'BC线电压', '1', '伏特', NULL, NULL, NULL, NULL, NULL, 'Ubc');
INSERT INTO "public"."point_template" VALUES ('2481d0b1-2699-4ef6-9ec5-ce72d5e92b3f', 'VoltageUCA', 'CA线电压', '1', '伏特', NULL, NULL, NULL, NULL, NULL, 'Uca');
INSERT INTO "public"."point_template" VALUES ('52dcb37d-b177-445f-94fa-37f505e36f92', 'VoltageUAB', 'AB线电压', '1', '伏特', NULL, NULL, NULL, NULL, NULL, 'Uab');
INSERT INTO "public"."point_template" VALUES ('45edcedc-960c-4569-87ca-0ef448aad364', 'Exp', '反向有功总电能', '1', 'kWh', NULL, NULL, NULL, NULL, NULL, 'Pr');
INSERT INTO "public"."point_template" VALUES ('de305670-ce09-4a16-af2f-c8d6da7ffb7a', 'ActiveZT', '正向有功总电能', '1', 'kWh', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."point_template" VALUES ('71704aa5-53a4-490b-b12f-3ae71a942b50', 'CumulativeFlow', '累计流量', '11', 'm³', NULL, NULL, NULL, NULL, NULL, 'zljll');
INSERT INTO "public"."point_template" VALUES ('615e62d8-5582-4a8a-b907-f003ab1fd646', 'FlowRate', '流速', '11', 'm³h', NULL, NULL, NULL, NULL, NULL, 'ls');
INSERT INTO "public"."point_template" VALUES ('2412b0bd-f066-466a-a176-52b6dbc3ab85', 'IF', '瞬时流量', '11', 'm³h', NULL, NULL, NULL, NULL, NULL, 'ssll');

-- ----------------------------
-- Table structure for policy
-- ----------------------------
DROP TABLE IF EXISTS "public"."policy";
CREATE TABLE "public"."policy" (
  "id" int8 NOT NULL,
  "title" varchar(25) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "dept" varchar(25) COLLATE "pg_catalog"."default",
  "issuing_time" timestamp(6),
  "url" varchar(255) COLLATE "pg_catalog"."default",
  "del_flag" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."policy"."id" IS 'id';
COMMENT ON COLUMN "public"."policy"."title" IS '政策标题';
COMMENT ON COLUMN "public"."policy"."type" IS '政策类型';
COMMENT ON COLUMN "public"."policy"."dept" IS '印发部门';
COMMENT ON COLUMN "public"."policy"."issuing_time" IS '印发时间';
COMMENT ON COLUMN "public"."policy"."url" IS '文件地址';
COMMENT ON COLUMN "public"."policy"."del_flag" IS '删除标志（0：正常；1：删除）';
COMMENT ON COLUMN "public"."policy"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."policy"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."policy"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."policy"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."policy"."remark" IS '备注';
COMMENT ON TABLE "public"."policy" IS '政策法规表';

-- ----------------------------
-- Records of policy
-- ----------------------------
INSERT INTO "public"."policy" VALUES (1930088966583652353, '工厂车间能源管理制度', 'ZCL', '综合部', '2025-06-02 00:00:00', 'https://demo-ems.zhitancloud.com/prod-api/profile/upload/2025/06/04/MYSQL_20250604102713A003.docx', 1, '2025-06-04 10:27:23.614', 'admin', '2025-06-04 10:54:03.823', 'admin', NULL);
INSERT INTO "public"."policy" VALUES (1930095830956380162, '工厂车间能源管理制度', 'ZCL', '综合', '2025-06-04 00:00:00', 'https://demo-ems.zhitancloud.com/prod-api/profile/upload/2025/06/04/艾特的2024年度碳排放报告（完整报告GHG版）2024-10-17 17_56_05_1729158966396529_20250604145522A001.docx', 0, '2025-06-04 10:54:40.196', 'admin', '2025-06-04 14:54:33.119', 'admin', NULL);

-- ----------------------------
-- Table structure for policy_annex
-- ----------------------------
DROP TABLE IF EXISTS "public"."policy_annex";
CREATE TABLE "public"."policy_annex" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "regulations_id" varchar(36) COLLATE "pg_catalog"."default",
  "file_name" varchar(255) COLLATE "pg_catalog"."default",
  "file_suffix" varchar(255) COLLATE "pg_catalog"."default",
  "file_path" varchar(255) COLLATE "pg_catalog"."default",
  "del_flage" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_operator" varchar(255) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_operator" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."policy_annex"."id" IS '主键';
COMMENT ON COLUMN "public"."policy_annex"."regulations_id" IS '关联policy_regulations';
COMMENT ON COLUMN "public"."policy_annex"."file_name" IS '文件名';
COMMENT ON COLUMN "public"."policy_annex"."file_suffix" IS '文件后缀';
COMMENT ON COLUMN "public"."policy_annex"."file_path" IS '文件路径';
COMMENT ON COLUMN "public"."policy_annex"."del_flage" IS '删除标志Y删除 N为删除';
COMMENT ON COLUMN "public"."policy_annex"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."policy_annex"."create_operator" IS '建立人';
COMMENT ON COLUMN "public"."policy_annex"."update_time" IS '修改日期';
COMMENT ON COLUMN "public"."policy_annex"."update_operator" IS '修改人';
COMMENT ON TABLE "public"."policy_annex" IS '政策法规附件';

-- ----------------------------
-- Records of policy_annex
-- ----------------------------

-- ----------------------------
-- Table structure for policy_regulations
-- ----------------------------
DROP TABLE IF EXISTS "public"."policy_regulations";
CREATE TABLE "public"."policy_regulations" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "title_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "creation_time" date NOT NULL,
  "operator" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."policy_regulations"."id" IS '序号';
COMMENT ON COLUMN "public"."policy_regulations"."title_name" IS '标题';
COMMENT ON COLUMN "public"."policy_regulations"."content" IS '内容';
COMMENT ON COLUMN "public"."policy_regulations"."sort" IS '分类';
COMMENT ON COLUMN "public"."policy_regulations"."creation_time" IS '创建时间';
COMMENT ON COLUMN "public"."policy_regulations"."operator" IS '操作人员';
COMMENT ON TABLE "public"."policy_regulations" IS '政策法规内容';

-- ----------------------------
-- Records of policy_regulations
-- ----------------------------

-- ----------------------------
-- Table structure for power_distribution
-- ----------------------------
DROP TABLE IF EXISTS "public"."power_distribution";
CREATE TABLE "public"."power_distribution" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(32) COLLATE "pg_catalog"."default",
  "code" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "principals" varchar(32) COLLATE "pg_catalog"."default",
  "principals_tel" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."power_distribution"."id" IS '配电室id';
COMMENT ON COLUMN "public"."power_distribution"."name" IS '名称';
COMMENT ON COLUMN "public"."power_distribution"."code" IS '编码';
COMMENT ON COLUMN "public"."power_distribution"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."power_distribution"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."power_distribution"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."power_distribution"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."power_distribution"."remark" IS '备注';
COMMENT ON COLUMN "public"."power_distribution"."principals" IS '负责人';
COMMENT ON COLUMN "public"."power_distribution"."principals_tel" IS '负责人电话';
COMMENT ON TABLE "public"."power_distribution" IS '配电室信息';

-- ----------------------------
-- Records of power_distribution
-- ----------------------------
INSERT INTO "public"."power_distribution" VALUES ('1925847136602066945', '10KV冶二精炼高压', '10KV冶二精炼高压', '2025-05-23 17:31:52.532', NULL, 'admin', NULL, NULL, NULL, NULL);
INSERT INTO "public"."power_distribution" VALUES ('1930087857513295874', '110kV恒金站', '110kV恒金站', '2025-06-04 10:22:59', '2025-06-04 10:23:26.978', 'admin', 'admin', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS "public"."product";
CREATE TABLE "public"."product" (
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "sn" varchar(20) COLLATE "pg_catalog"."default",
  "muid" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "superid" int4,
  "issub" varchar(32) COLLATE "pg_catalog"."default",
  "procofficient" numeric(18,4),
  "isshow" varchar(32) COLLATE "pg_catalog"."default",
  "iscpnyproduct" varchar(32) COLLATE "pg_catalog"."default",
  "opr_man" varchar(20) COLLATE "pg_catalog"."default",
  "opr_time" timestamp(0),
  "mod_man" varchar(20) COLLATE "pg_catalog"."default",
  "mod_time" timestamp(0),
  "note" varchar(100) COLLATE "pg_catalog"."default",
  "price" numeric(18,4),
  "id" int4 NOT NULL DEFAULT nextval('sys_product_seq'::regclass)
)
;
COMMENT ON COLUMN "public"."product"."name" IS '产品名称';
COMMENT ON COLUMN "public"."product"."sn" IS '产品编号';
COMMENT ON COLUMN "public"."product"."muid" IS '计量单位';
COMMENT ON COLUMN "public"."product"."superid" IS '父级产品ID';
COMMENT ON COLUMN "public"."product"."issub" IS '是否为子级';
COMMENT ON COLUMN "public"."product"."procofficient" IS '折算系数';
COMMENT ON COLUMN "public"."product"."isshow" IS '是否显示';
COMMENT ON COLUMN "public"."product"."iscpnyproduct" IS '是否主要产品';
COMMENT ON COLUMN "public"."product"."opr_man" IS '操作人';
COMMENT ON COLUMN "public"."product"."opr_time" IS '操作时间';
COMMENT ON COLUMN "public"."product"."mod_man" IS '更新人';
COMMENT ON COLUMN "public"."product"."mod_time" IS '更新时间';
COMMENT ON COLUMN "public"."product"."note" IS '备注';
COMMENT ON COLUMN "public"."product"."price" IS '价格';
COMMENT ON TABLE "public"."product" IS '产品表';

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for product_output
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_output";
CREATE TABLE "public"."product_output" (
  "node_id" varchar(36) COLLATE "pg_catalog"."default",
  "time_type" varchar(10) COLLATE "pg_catalog"."default",
  "data_time" varchar(20) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "number" float8,
  "unit" varchar(20) COLLATE "pg_catalog"."default",
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "data_type" varchar(255) COLLATE "pg_catalog"."default",
  "product_output_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "node_name" varchar(255) COLLATE "pg_catalog"."default",
  "product_type" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."product_output"."node_id" IS '用能单元id（model_node）';
COMMENT ON COLUMN "public"."product_output"."time_type" IS '时间类型（年、月、日）';
COMMENT ON COLUMN "public"."product_output"."data_time" IS '时间';
COMMENT ON COLUMN "public"."product_output"."name" IS '名称';
COMMENT ON COLUMN "public"."product_output"."number" IS '产量';
COMMENT ON COLUMN "public"."product_output"."unit" IS '单位';
COMMENT ON COLUMN "public"."product_output"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."product_output"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."product_output"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."product_output"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."product_output"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."product_output"."remark" IS '备注';
COMMENT ON COLUMN "public"."product_output"."data_type" IS '1产量2仪表3指标';
COMMENT ON COLUMN "public"."product_output"."product_output_id" IS '主键';
COMMENT ON COLUMN "public"."product_output"."node_name" IS '节点名称';
COMMENT ON COLUMN "public"."product_output"."product_type" IS '产品类型';
COMMENT ON TABLE "public"."product_output" IS '产品产量录入';

-- ----------------------------
-- Records of product_output
-- ----------------------------

-- ----------------------------
-- Table structure for rule_formula
-- ----------------------------
DROP TABLE IF EXISTS "public"."rule_formula";
CREATE TABLE "public"."rule_formula" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "point_id" varchar(36) COLLATE "pg_catalog"."default",
  "formula_text" varchar(2000) COLLATE "pg_catalog"."default",
  "is_pv_calc" int2
)
;
COMMENT ON COLUMN "public"."rule_formula"."is_pv_calc" IS '是否计算尖峰平谷（0:否，1:是）';
COMMENT ON TABLE "public"."rule_formula" IS '点位计算公式';

-- ----------------------------
-- Records of rule_formula
-- ----------------------------

-- ----------------------------
-- Table structure for rule_formula_param
-- ----------------------------
DROP TABLE IF EXISTS "public"."rule_formula_param";
CREATE TABLE "public"."rule_formula_param" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "formula_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "point_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "param_name" varchar(20) COLLATE "pg_catalog"."default",
  "param_value" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of rule_formula_param
-- ----------------------------

-- ----------------------------
-- Table structure for rule_function
-- ----------------------------
DROP TABLE IF EXISTS "public"."rule_function";
CREATE TABLE "public"."rule_function" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "func_name" varchar(10) COLLATE "pg_catalog"."default",
  "func_text" varchar(50) COLLATE "pg_catalog"."default",
  "info" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rule_function"."id" IS '主键';
COMMENT ON COLUMN "public"."rule_function"."func_name" IS '函数名';
COMMENT ON COLUMN "public"."rule_function"."func_text" IS '函数文本';
COMMENT ON COLUMN "public"."rule_function"."info" IS '介绍';
COMMENT ON TABLE "public"."rule_function" IS '计算公式管理';

-- ----------------------------
-- Records of rule_function
-- ----------------------------
INSERT INTO "public"."rule_function" VALUES ('46051a8a-5e05-4fa7-b09e-b53c67673603', 'getByType', 'getByType(indexCode, timeType)', '根据时间类型获取指标数据');
INSERT INTO "public"."rule_function" VALUES ('7fc58b77-d6ab-4b4a-8cd6-34bc67fd4c42', 'accumulate', 'accumulate(indexCode)', '计算累积量');
INSERT INTO "public"."rule_function" VALUES ('5caf87ab-4a61-4646-9909-43fa062c7782', 'get', 'get(indexCode)', '获取数据，根据指标的计算周期获取对应的指标周期数据');

-- ----------------------------
-- Table structure for rule_storage
-- ----------------------------
DROP TABLE IF EXISTS "public"."rule_storage";
CREATE TABLE "public"."rule_storage" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "point_id" varchar(36) COLLATE "pg_catalog"."default",
  "time_type" varchar(20) COLLATE "pg_catalog"."default",
  "calc_type" varchar(10) COLLATE "pg_catalog"."default",
  "calc_text" varchar(1200) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "is_pv_calc" int2
)
;
COMMENT ON COLUMN "public"."rule_storage"."is_pv_calc" IS '是否计算尖峰平谷（0:否，1:是）';
COMMENT ON TABLE "public"."rule_storage" IS '计量器具';

-- ----------------------------
-- Records of rule_storage
-- ----------------------------

-- ----------------------------
-- Table structure for setting_electricity_price
-- ----------------------------
DROP TABLE IF EXISTS "public"."setting_electricity_price";
CREATE TABLE "public"."setting_electricity_price" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(36) COLLATE "pg_catalog"."default",
  "start_time" time(6),
  "stop_time" time(6),
  "effecticity_price" numeric(12,2),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."setting_electricity_price"."id" IS '主键';
COMMENT ON COLUMN "public"."setting_electricity_price"."parent_id" IS '父级id';
COMMENT ON COLUMN "public"."setting_electricity_price"."type" IS '用电类型（尖、峰、平、谷、深谷）';
COMMENT ON COLUMN "public"."setting_electricity_price"."start_time" IS '时段开始时间';
COMMENT ON COLUMN "public"."setting_electricity_price"."stop_time" IS '时段结束时间';
COMMENT ON COLUMN "public"."setting_electricity_price"."effecticity_price" IS '电价';
COMMENT ON COLUMN "public"."setting_electricity_price"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."setting_electricity_price"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."setting_electricity_price"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."setting_electricity_price"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."setting_electricity_price"."remark" IS '备注';
COMMENT ON TABLE "public"."setting_electricity_price" IS '尖峰平谷电价设置';

-- ----------------------------
-- Records of setting_electricity_price
-- ----------------------------
INSERT INTO "public"."setting_electricity_price" VALUES ('1925840352013357057', 'e89b47bd-7c5f-4a02-8d47-aa66492c4928', 'SHARP', '00:00:00', '02:30:00', 0.30, 'admin', '2025-05-23 17:04:54', NULL, NULL, NULL);
INSERT INTO "public"."setting_electricity_price" VALUES ('1925840352013357058', 'e89b47bd-7c5f-4a02-8d47-aa66492c4928', 'VALLEY', '02:30:00', '00:00:00', 0.10, 'admin', '2025-05-23 17:04:54', NULL, NULL, NULL);
INSERT INTO "public"."setting_electricity_price" VALUES ('1929834799357140994', 'de56e6b6-7893-4c48-8574-6ececfb964d6', 'PEAK', '00:00:00', '06:00:00', 0.20, 'admin', '2025-06-03 17:37:25.422', NULL, NULL, NULL);
INSERT INTO "public"."setting_electricity_price" VALUES ('1929834799357140995', 'de56e6b6-7893-4c48-8574-6ececfb964d6', 'VALLEY', '06:00:00', '00:00:00', 0.10, 'admin', '2025-06-03 17:37:25.43', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for setting_electricity_price_date
-- ----------------------------
DROP TABLE IF EXISTS "public"."setting_electricity_price_date";
CREATE TABLE "public"."setting_electricity_price_date" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "begin_date" date,
  "end_date" date,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."setting_electricity_price_date"."id" IS '主键';
COMMENT ON COLUMN "public"."setting_electricity_price_date"."begin_date" IS '开始时间';
COMMENT ON COLUMN "public"."setting_electricity_price_date"."end_date" IS '结束时间';
COMMENT ON COLUMN "public"."setting_electricity_price_date"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."setting_electricity_price_date"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."setting_electricity_price_date"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."setting_electricity_price_date"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."setting_electricity_price_date"."remark" IS '备注';
COMMENT ON TABLE "public"."setting_electricity_price_date" IS '尖峰平谷电价时间段';

-- ----------------------------
-- Records of setting_electricity_price_date
-- ----------------------------
INSERT INTO "public"."setting_electricity_price_date" VALUES ('de56e6b6-7893-4c48-8574-6ececfb964d6', '2025-06-18', '2025-06-19', 'admin', '2025-06-03 17:36:50.722', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for spikes_and_valleys_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."spikes_and_valleys_item";
CREATE TABLE "public"."spikes_and_valleys_item" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "time" varchar(2) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) DEFAULT now(),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "electrovalency" numeric(11,4),
  "start_time" varchar(20) COLLATE "pg_catalog"."default",
  "end_time" varchar(20) COLLATE "pg_catalog"."default",
  "scheme_id" varchar COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."spikes_and_valleys_item"."time" IS '时段:尖峰平谷字典值1尖2峰3平4谷';
COMMENT ON COLUMN "public"."spikes_and_valleys_item"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."spikes_and_valleys_item"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."spikes_and_valleys_item"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."spikes_and_valleys_item"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."spikes_and_valleys_item"."remark" IS '备注';
COMMENT ON COLUMN "public"."spikes_and_valleys_item"."electrovalency" IS '电费';
COMMENT ON COLUMN "public"."spikes_and_valleys_item"."start_time" IS '开始时间';
COMMENT ON COLUMN "public"."spikes_and_valleys_item"."end_time" IS '结束时间';
COMMENT ON TABLE "public"."spikes_and_valleys_item" IS '尖峰平谷时间段明细';

-- ----------------------------
-- Records of spikes_and_valleys_item
-- ----------------------------

-- ----------------------------
-- Table structure for spikes_and_valleys_scheme
-- ----------------------------
DROP TABLE IF EXISTS "public"."spikes_and_valleys_scheme";
CREATE TABLE "public"."spikes_and_valleys_scheme" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) DEFAULT now(),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "scheme_name" varchar(50) COLLATE "pg_catalog"."default",
  "execute_time" timestamp(6) DEFAULT now(),
  "type" varchar(2) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."spikes_and_valleys_scheme"."create_time" IS '建立时间';
COMMENT ON COLUMN "public"."spikes_and_valleys_scheme"."create_by" IS '建立人';
COMMENT ON COLUMN "public"."spikes_and_valleys_scheme"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."spikes_and_valleys_scheme"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."spikes_and_valleys_scheme"."remark" IS '备注';
COMMENT ON COLUMN "public"."spikes_and_valleys_scheme"."scheme_name" IS '方案名称';
COMMENT ON COLUMN "public"."spikes_and_valleys_scheme"."execute_time" IS '执行时间';
COMMENT ON COLUMN "public"."spikes_and_valleys_scheme"."type" IS '方案类型1默认2后勤3外部';
COMMENT ON TABLE "public"."spikes_and_valleys_scheme" IS '尖峰平谷时间段明细';

-- ----------------------------
-- Records of spikes_and_valleys_scheme
-- ----------------------------

-- ----------------------------
-- Table structure for storage_parameter
-- ----------------------------
DROP TABLE IF EXISTS "public"."storage_parameter";
CREATE TABLE "public"."storage_parameter" (
  "storage_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "index_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON TABLE "public"."storage_parameter" IS '公式参数与点位关联关系';

-- ----------------------------
-- Records of storage_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for svg_attach
-- ----------------------------
DROP TABLE IF EXISTS "public"."svg_attach";
CREATE TABLE "public"."svg_attach" (
  "filepath" varchar(500) COLLATE "pg_catalog"."default",
  "node_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."svg_attach"."filepath" IS '文件路径';

-- ----------------------------
-- Records of svg_attach
-- ----------------------------
INSERT INTO "public"."svg_attach" VALUES (NULL, '638174a3-b673-432d-a25f-bc0f225f775c');
INSERT INTO "public"."svg_attach" VALUES ('https://demo-ems.zhitancloud.com/prod-api/profile/upload/2025/06/04/202变电所_20250604102458A002.svg', '76307d81-5e3c-461b-bbf0-8e279dd58d40');

-- ----------------------------
-- Table structure for svg_setting
-- ----------------------------
DROP TABLE IF EXISTS "public"."svg_setting";
CREATE TABLE "public"."svg_setting" (
  "param" varchar(32) COLLATE "pg_catalog"."default",
  "tag" varchar(64) COLLATE "pg_catalog"."default",
  "node_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."svg_setting"."tag" IS 'code指标编码';

-- ----------------------------
-- Records of svg_setting
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_config";
CREATE TABLE "public"."sys_config" (
  "config_id" int4 NOT NULL DEFAULT nextval('config_id_seq'::regclass),
  "config_name" varchar(100) COLLATE "pg_catalog"."default",
  "config_key" varchar(100) COLLATE "pg_catalog"."default",
  "config_value" varchar(500) COLLATE "pg_catalog"."default",
  "config_type" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_config"."config_id" IS '参数主键';
COMMENT ON COLUMN "public"."sys_config"."config_name" IS '参数名称';
COMMENT ON COLUMN "public"."sys_config"."config_key" IS '参数键名';
COMMENT ON COLUMN "public"."sys_config"."config_value" IS '参数键值';
COMMENT ON COLUMN "public"."sys_config"."config_type" IS '系统内置（Y是 N否）';
COMMENT ON COLUMN "public"."sys_config"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_config"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_config"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_config"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_config" IS '系统参数设置（研发用）';

-- ----------------------------
-- Records of sys_config
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dept";
CREATE TABLE "public"."sys_dept" (
  "dept_id" int8 NOT NULL DEFAULT nextval('dept_id_seq'::regclass),
  "parent_id" int8 DEFAULT 0,
  "ancestors" varchar(50) COLLATE "pg_catalog"."default",
  "dept_name" varchar(30) COLLATE "pg_catalog"."default",
  "order_num" int4 DEFAULT 0,
  "leader" varchar(20) COLLATE "pg_catalog"."default",
  "phone" varchar(11) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "del_flag" int2 DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_dept"."dept_id" IS '部门id';
COMMENT ON COLUMN "public"."sys_dept"."parent_id" IS '父部门id';
COMMENT ON COLUMN "public"."sys_dept"."ancestors" IS '祖级列表';
COMMENT ON COLUMN "public"."sys_dept"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_dept"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_dept"."leader" IS '负责人';
COMMENT ON COLUMN "public"."sys_dept"."phone" IS '联系电话';
COMMENT ON COLUMN "public"."sys_dept"."email" IS '邮箱';
COMMENT ON COLUMN "public"."sys_dept"."status" IS '部门状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dept"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_dept"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dept"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dept"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dept"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."sys_dept" IS '部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_data";
CREATE TABLE "public"."sys_dict_data" (
  "dict_code" int8 NOT NULL DEFAULT nextval('dict_code_seq'::regclass),
  "dict_sort" int4 DEFAULT 0,
  "dict_label" varchar(100) COLLATE "pg_catalog"."default",
  "dict_value" varchar(100) COLLATE "pg_catalog"."default",
  "dict_type" varchar(100) COLLATE "pg_catalog"."default",
  "css_class" varchar(100) COLLATE "pg_catalog"."default",
  "list_class" varchar(100) COLLATE "pg_catalog"."default",
  "is_default" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_data"."dict_code" IS '字典编码';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_sort" IS '字典排序';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_label" IS '字典标签';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_value" IS '字典键值';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_data"."css_class" IS '样式属性（其他样式扩展）';
COMMENT ON COLUMN "public"."sys_dict_data"."list_class" IS '表格回显样式';
COMMENT ON COLUMN "public"."sys_dict_data"."is_default" IS '是否默认（Y是 N否）';
COMMENT ON COLUMN "public"."sys_dict_data"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dict_data"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dict_data"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_data"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dict_data"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_data"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_data" IS '字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO "public"."sys_dict_data" VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO "public"."sys_dict_data" VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO "public"."sys_dict_data" VALUES (3, 3, '变性', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-05 15:55:12.821023', '性别未知');
INSERT INTO "public"."sys_dict_data" VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO "public"."sys_dict_data" VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO "public"."sys_dict_data" VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO "public"."sys_dict_data" VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO "public"."sys_dict_data" VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO "public"."sys_dict_data" VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO "public"."sys_dict_data" VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO "public"."sys_dict_data" VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO "public"."sys_dict_data" VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO "public"."sys_dict_data" VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO "public"."sys_dict_data" VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO "public"."sys_dict_data" VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO "public"."sys_dict_data" VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO "public"."sys_dict_data" VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO "public"."sys_dict_data" VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO "public"."sys_dict_data" VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO "public"."sys_dict_data" VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO "public"."sys_dict_data" VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO "public"."sys_dict_data" VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (29, 4, '未知', '3', 'sys_user_sex', NULL, NULL, NULL, '0', 'admin', '2020-02-05 16:02:44.700402', NULL, NULL, '性别未知');
INSERT INTO "public"."sys_dict_data" VALUES (30, 3, '半透明', '50', 'sys_show_hide', NULL, NULL, NULL, '0', 'yiyi', '2020-02-05 23:12:02.772083', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (32, 1, '是', 'Y', 'sys_is_default', NULL, NULL, 'Y', '0', 'admin', '2020-02-06 20:51:59.865645', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (33, 2, '否', 'N', 'sys_is_default', NULL, NULL, 'N', '0', 'admin', '2020-02-06 20:52:13.224991', 'admin', '2020-02-06 21:29:20.401879', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (35, 0, '能源类指标', '1', 'sys_index_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-08 13:19:10.876989', 'admin', '2020-02-24 23:27:32.007713', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (41, 0, '电表', '1', 'sys_device_type', NULL, NULL, 'Y', '0', 'admin', '2020-02-08 13:23:49.417587', 'admin', '2022-03-19 16:08:57.953946', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (42, 2, '水表', '2', 'sys_device_type', NULL, NULL, 'N', '0', 'admin', '2020-02-08 13:24:02.646856', 'admin', '2021-01-14 16:47:56.552441', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (45, 0, '千瓦时', 'kWh', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 11:13:56.070783', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (46, 1, '立方米', 'm³', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 11:14:25.420815', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (47, 3, '吨标准煤', 'kgce/t', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 11:15:19.28298', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (48, 0, '使用中', '1', 'meter_status', NULL, NULL, 'N', '0', 'admin', '2020-02-11 15:04:23.141193', 'admin', '2020-02-15 09:46:55.790869', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (49, 1, '检修中', '2', 'meter_status', NULL, NULL, 'N', '0', 'admin', '2020-02-11 15:04:40.209475', 'admin', '2020-02-12 11:59:02.119949', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (50, 2, '备用', '3', 'meter_status', NULL, NULL, 'Y', '0', 'admin', '2020-02-11 15:04:53.138169', 'admin', '2020-02-15 09:46:51.365521', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (51, 0, '实时数据', '1', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-02-12 11:41:15.215776', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (52, 0, '阶段数据', '2', 'data_type', NULL, NULL, 'N', '0', 'admin', '2020-02-12 11:41:40.767329', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (55, 1, '峰', 'PEAK', 'electricity_price', NULL, NULL, 'N', '0', 'admin', '2020-02-18 09:24:07.744813', 'admin', '2024-10-30 09:12:29.510965', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (56, 2, '平', 'FLAT', 'electricity_price', NULL, NULL, 'N', '0', 'admin', '2020-02-18 09:24:21.406269', 'admin', '2024-10-30 09:12:36.792494', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (57, 3, '谷', 'VALLEY', 'electricity_price', NULL, NULL, 'N', '0', 'admin', '2020-02-18 09:24:38.274334', 'admin', '2024-10-30 09:12:48.606433', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (58, 1, '指标配置', 'index', 'sys_model_type', NULL, NULL, 'N', '0', 'admin', '2020-02-19 15:13:21.745151', 'admin', '2020-02-22 23:00:30.427468', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (61, 2, '仅节点', 'node', 'sys_model_type', NULL, NULL, 'N', '0', 'admin', '2020-02-19 15:15:34.284484', 'admin', '2020-02-22 23:01:02.287804', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (62, 0, '一级', '1', 'facility_grade', NULL, NULL, 'Y', '0', 'admin', '2020-02-24 10:49:14.751243', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (63, 2, '二级', '2', 'facility_grade', NULL, NULL, 'N', '0', 'admin', '2020-02-24 10:49:24.485001', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (64, 3, '三级', '3', 'facility_grade', NULL, NULL, 'N', '0', 'admin', '2020-02-24 10:49:31.659298', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (70, 1, '产品类指标', '2', 'sys_index_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-24 23:16:37.387605', 'admin', '2020-02-24 23:28:21.140918', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (71, 2, '能效类指标', '3', 'sys_index_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-24 23:28:37.181255', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (72, 3, '经营类指标', '4', 'sys_index_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-24 23:28:59.429446', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (73, 4, '其他', '5', 'sys_index_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-24 23:29:07.704952', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (76, 1, '厂部', '1', 'sys_node_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-29 09:53:50.087297', 'admin', '2024-10-23 15:21:48.202162', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (77, 2, '配电室', '2', 'sys_node_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-29 09:54:22.94683', 'admin', '2024-11-26 17:34:36.284383', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (78, 4, '重点能耗设备', '4', 'sys_node_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-29 09:54:33.424202', 'admin', '2020-02-29 10:05:32.715443', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (79, 3, '区域', '3', 'sys_node_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-29 10:05:02.273561', 'admin', '2024-10-23 15:22:04.405643', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (80, 0, '实时', 'LIVE', 'warn_time_slot', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:28:51.151405', 'admin', '2020-03-03 23:31:42.946455', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (81, 1, '小时', 'HOUR', 'warn_time_slot', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:29:14.968217', 'admin', '2020-03-03 23:31:36.553654', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (82, 2, '天', 'DAY', 'warn_time_slot', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:29:27.797857', 'admin', '2020-03-03 23:31:30.170709', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (83, 3, '月', 'MONTH', 'warn_time_slot', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:29:42.411483', 'admin', '2020-03-03 23:31:23.199417', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (84, 4, '年', 'YEAR', 'warn_time_slot', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:29:59.941503', 'admin', '2020-03-03 23:31:15.650897', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (85, 5, '季度', 'QUARTER', 'warn_time_slot', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:30:24.32495', 'admin', '2020-03-03 23:31:06.128736', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (86, 6, '排班', 'SCHEDULING', 'warn_time_slot', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:30:56.556899', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (87, 0, '上限', '1', 'limit_type', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:45:55.945052', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (88, 1, '下限', '2', 'limit_type', NULL, NULL, 'N', '0', 'admin', '2020-03-03 23:46:03.924843', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (89, 0, '年', 'YEAR', 'timeType', NULL, NULL, 'N', '0', 'admin', '2020-03-04 17:28:48.446925', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (90, 0, '月', 'MONTH', 'timeType', NULL, NULL, 'Y', '0', 'admin', '2020-03-04 17:29:06.967349', 'admin', '2020-03-21 16:52:32.827439', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (92, 1, '预警', 'WARNING', 'alarm_type', NULL, NULL, 'Y', '0', 'admin', '2020-03-11 09:40:53.836247', 'admin', '2020-03-11 09:42:46.052649', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (93, 2, '报警', 'ALARM', 'alarm_type', NULL, NULL, 'N', '0', 'admin', '2020-03-11 09:42:39.318976', 'admin', '2020-03-11 09:43:11.729783', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (95, 2, '月', 'MONTH', 'dateType', NULL, NULL, 'Y', '0', 'admin', '2020-03-11 14:09:29.743831', 'admin', '2020-03-19 17:58:25.398131', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (96, 1, '年', 'YEAR', 'dateType', NULL, NULL, 'N', '0', 'admin', '2020-03-11 14:10:24.947004', 'admin', '2020-03-21 16:52:53.557079', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (97, 1, '高', '1', 'alarm_level', NULL, NULL, 'N', '0', 'admin', '2020-03-14 13:40:30.23703', 'admin', '2020-03-18 14:10:54.854806', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (98, 2, '中', '2', 'alarm_level', NULL, NULL, 'N', '0', 'admin', '2020-03-14 13:40:42.185334', 'admin', '2020-03-18 14:10:58.785261', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (99, 3, '低', '3', 'alarm_level', NULL, NULL, 'Y', '0', 'admin', '2020-03-14 13:40:56.843038', 'admin', '2020-03-18 14:11:01.82341', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (100, 0, '两位', '2', 'number_digit', NULL, NULL, 'Y', '0', 'admin', '2020-03-16 11:43:56.4968', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (101, 5, '设备', '5', 'sys_node_category', NULL, NULL, 'N', '0', 'admin', '2020-03-18 17:02:30.195376', NULL, NULL, '设备启停模型节点标识设备、非设备用');
INSERT INTO "public"."sys_dict_data" VALUES (102, 6, '其他', '9', 'sys_node_category', NULL, NULL, 'N', '0', 'admin', '2020-03-18 17:03:08.059176', NULL, NULL, '设备启停模型用来区分节点设备、非设备类型');
INSERT INTO "public"."sys_dict_data" VALUES (103, 1, '水系统', '1', 'svgType', NULL, NULL, 'Y', '0', 'admin', '2020-03-19 14:43:24.366899', 'admin', '2020-03-30 21:20:29.332004', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (105, 2, '电系统', '2', 'svgType', NULL, NULL, 'N', '0', 'admin', '2020-03-19 14:43:55.948884', 'admin', '2020-03-19 14:44:09.645726', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (106, 3, '日', 'DAY', 'dateType', NULL, NULL, 'N', '0', 'admin', '2020-03-19 17:58:57.178797', 'admin', '2020-03-21 16:52:57.843913', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (107, 1, '启用', 'Y', 'sys_is_enable', NULL, NULL, 'N', '0', 'admin', '2020-03-20 15:21:10.898495', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (108, 2, '停用', 'P', 'sys_is_enable', NULL, NULL, 'N', '0', 'admin', '2020-03-20 15:21:24.766724', 'admin', '2020-03-20 15:37:31.746096', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (109, 3, '尚未设置', 'N', 'sys_is_enable', NULL, NULL, 'N', '0', 'admin', '2020-03-20 15:37:23.941597', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (110, 0, '小时', 'HOUR', 'entryDataTime', NULL, NULL, 'Y', '0', 'admin', '2020-03-25 17:35:39.267018', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (111, 1, '日', 'DAY', 'entryDataTime', NULL, NULL, 'Y', '0', 'admin', '2020-03-25 17:36:06.504157', 'admin', '2020-03-25 17:44:42.982353', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (113, 2, '月', 'MONTH', 'entryDataTime', NULL, NULL, 'Y', '0', 'admin', '2020-03-25 17:41:31.162263', 'admin', '2020-03-25 17:45:07.527377', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (114, 3, '年', 'YEAR', 'entryDataTime', NULL, NULL, 'Y', '0', 'admin', '2020-03-25 17:45:31.484919', 'admin', '2020-03-25 17:45:39.986636', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (115, 0, '安培', 'A', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-03-31 14:45:56.032248', 'admin', '2020-04-18 10:57:59.074536', '电流单位');
INSERT INTO "public"."sys_dict_data" VALUES (116, 0, '伏特', 'V', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-03-31 14:46:19.320119', 'admin', '2020-04-18 10:58:16.065687', '电压单位');
INSERT INTO "public"."sys_dict_data" VALUES (117, 3, '年', 'YEAR', 'period', NULL, 'default', NULL, '0', 'admin', '2024-10-12 11:07:49.335173', 'admin', '2024-11-13 21:32:39.208773', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (118, 2, '月', 'MONTH', 'period', NULL, 'default', NULL, '0', 'admin', '2024-10-12 11:08:17.691834', 'admin', '2024-10-23 14:31:40.811255', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (119, 1, '天', 'DAY', 'period', NULL, 'default', NULL, '0', 'admin', '2024-10-12 11:09:43.415506', 'admin', '2024-11-13 21:32:35.047103', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (120, 0, '兆帕', 'MPa', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-04-18 10:55:43.955122', 'admin', '2020-04-18 10:56:02.337109', '压力单位');
INSERT INTO "public"."sys_dict_data" VALUES (121, 0, '千帕', 'kPa', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-04-18 10:56:21.100874', NULL, NULL, '压力单位');
INSERT INTO "public"."sys_dict_data" VALUES (122, 0, '帕', 'Pa', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-04-18 10:56:37.712685', NULL, NULL, '压力单位');
INSERT INTO "public"."sys_dict_data" VALUES (123, 0, '千伏特', 'KV', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-04-18 10:58:45.720765', NULL, NULL, '电压单位');
INSERT INTO "public"."sys_dict_data" VALUES (124, 0, '瓦特', 'P', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-04-18 10:59:25.092683', NULL, NULL, '功率单位');
INSERT INTO "public"."sys_dict_data" VALUES (125, 0, '毫安', 'mA', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-04-18 11:00:30.33447', NULL, NULL, '电流单位');
INSERT INTO "public"."sys_dict_data" VALUES (126, 0, '摄氏度', '℃', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-04-18 11:05:35.856412', NULL, NULL, '温度单位');
INSERT INTO "public"."sys_dict_data" VALUES (127, 0, '华氏度', '℉', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-04-18 11:06:13.828787', NULL, NULL, '温度单位');
INSERT INTO "public"."sys_dict_data" VALUES (142, 0, '吨', 't', 'sys_unit', NULL, NULL, 'N', '0', 'admin', '2020-04-23 10:31:34.380279', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (157, 0, '千瓦', 'KW', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-04-29 09:09:12.574131', 'admin', '2020-04-29 09:09:26.532269', '有功功率');
INSERT INTO "public"."sys_dict_data" VALUES (158, 0, 'WF', 'WF', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-04-29 09:15:01.152818', NULL, NULL, '功率因数');
INSERT INTO "public"."sys_dict_data" VALUES (159, 1, '政策类', 'ZCL', 'policy_sort', NULL, NULL, 'Y', '0', 'admin', '2020-06-10 09:28:39.574416', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (160, 2, '法律类', 'FLL', 'policy_sort', NULL, NULL, 'Y', '0', 'admin', '2020-06-10 09:28:54.320662', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (161, 3, '环境类', 'HJL', 'policy_sort', NULL, NULL, 'Y', '0', 'admin', '2020-06-10 09:29:12.919084', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (162, 1, 'mg/m3', 'mg', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-06-13 13:57:05.52994', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (163, 2, 'Nm3/h', 'Nm3/h', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-06-13 13:57:33.432179', 'admin', '2021-04-28 09:41:59.807729', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (164, 1, '℃', '1', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-06-13 13:57:43.038115', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (165, 2, '%', '%', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-06-13 14:01:10.458012', 'admin', '2020-06-13 14:01:33.574707', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (166, 0, '年', 'YEAR', 'electricDate', NULL, NULL, 'N', '0', 'admin', '2020-07-10 11:22:34.216964', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (167, 1, '月', 'MONTH', 'electricDate', NULL, NULL, 'Y', '0', 'admin', '2020-07-10 11:23:09.244575', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (168, 0, '阶段', 'PERIOD', 'warn_time_slot', NULL, NULL, 'N', '0', 'admin', '2020-07-11 16:57:11.503832', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (169, 0, '尖', 'SHARP', 'electricity_price', NULL, NULL, 'N', '0', 'admin', '2020-07-27 10:20:00.633066', 'admin', '2020-07-29 09:58:36.394873', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (170, 0, 't/h', 't/h', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2020-07-27 15:46:20.136315', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (172, 0, '综合电耗', '1', 'indicatorName', NULL, NULL, 'N', '0', 'admin', '2020-12-14 15:20:25.802347', 'admin', '2020-12-18 09:57:44.290204', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (173, 0, '占总能耗比例', '2', 'indicatorName', NULL, NULL, 'Y', '0', 'admin', '2020-12-14 15:21:06.808903', 'admin', '2020-12-18 09:57:51.321709', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (199, 1, '空压机', '0', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:41:31.609547', 'admin', '2020-08-06 09:43:59.060649', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (200, 2, '电机', '1', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:41:39.661715', 'admin', '2020-08-06 09:42:06.024001', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (201, 3, '风机', '2', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:41:47.650661', 'admin', '2020-08-06 09:42:10.774784', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (202, 4, '循环水泵', '3', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:41:54.085699', 'admin', '2020-08-06 09:42:14.02134', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (203, 5, '供水泵', '4', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:42:27.183685', 'admin', '2020-08-06 09:42:42.541336', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (204, 6, '离心泵', '5', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:42:53.397578', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (205, 7, '射水泵', '6', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:43:07.717256', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (206, 8, '水泵', '7', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:43:36.398312', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (207, 9, '洗水泵', '8', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:43:47.141158', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (208, 10, '油泵', '9', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:44:20.172725', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (209, 11, '给水泵', '10', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:44:41.028983', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (210, 12, '高压泵', '11', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:44:56.213696', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (211, 13, '制冷机', '12', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:45:07.483894', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (212, 14, '电动机', '13', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:45:19.275369', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (213, 15, '蒸发器', '14', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:45:37.812353', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (214, 16, '焦油泵', '15', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:45:52.972374', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (215, 17, '循环泵', '16', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:46:06.55536', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (216, 18, '鼓风机', '17', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:46:16.843563', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (217, 19, '输送机', '18', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:46:27.630751', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (218, 20, '破碎机', '19', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:46:46.404638', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (219, 21, '引风机', '20', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:47:11.348087', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (220, 22, '辅助风机', '21', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2020-08-06 09:47:36.154743', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (221, 1, '日报', 'DAY', 'statisticalType', NULL, NULL, 'Y', '0', 'admin', '2020-12-09 16:11:48.883642', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (222, 2, '月报', 'MONTH', 'statisticalType', NULL, NULL, 'N', '0', 'admin', '2020-12-09 16:12:09.164004', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (223, 1, '焦炭', 'JT', 'rep_product_type', NULL, NULL, 'Y', '0', 'admin', '2020-12-29 11:16:56.951957', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (224, 2, '焦油', 'JY', 'rep_product_type', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:17:07.070665', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (225, 3, '粗苯', 'CB', 'rep_product_type', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:17:16.844581', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (226, 4, '硫铵', 'LA', 'rep_product_type', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:17:27.122225', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (227, 5, '煤气', 'MQ', 'rep_product_type', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:17:37.225458', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (228, 6, '蒸汽', 'ZQ', 'rep_product_type', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:17:47.727615', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (229, 1, '能源消耗量', 'NYXHL', 'variety_type', NULL, NULL, 'Y', '0', 'admin', '2020-12-29 11:18:40.995102', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (230, 2, '产品产量', 'CPCL', 'variety_type', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:18:50.589278', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (231, 1, '2018', '2018', 'selectyear', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:19:24.422884', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (232, 2, '2019', '2019', 'selectyear', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:19:32.6277', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (233, 3, '2020', '2020', 'selectyear', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:19:40.237698', 'admin', '2021-04-28 13:08:40.256354', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (234, 4, '2021', '2021', 'selectyear', NULL, NULL, 'Y', '0', 'admin', '2020-12-29 11:19:52.261906', 'admin', '2021-04-28 13:07:22.295914', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (235, 5, '2022', '2022', 'selectyear', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:20:10.539093', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (236, 6, '2023', '2023', 'selectyear', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:20:19.245087', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (237, 7, '2025', '2025', 'selectyear', NULL, NULL, 'N', '0', 'admin', '2020-12-29 11:20:26.965771', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (243, 1, '月', 'DAY', 'report_form', NULL, NULL, 'N', '0', 'admin', '2020-12-29 16:42:45.314422', 'admin', '2020-12-29 16:43:18.136992', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (244, 2, '年', 'MONTH', 'report_form', NULL, NULL, 'N', '0', 'admin', '2020-12-29 16:42:54.66894', 'admin', '2020-12-29 16:43:15.53779', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (245, 3, '日', 'HOUR', 'report_form', NULL, NULL, 'Y', '0', 'admin', '2020-12-29 16:43:10.156471', 'admin', '2020-12-29 16:43:20.988688', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (246, 1, '国内', '1', 'benchmarkingRange', NULL, NULL, 'Y', '0', 'admin', '2021-01-04 14:27:22.763994', 'admin', '2021-01-04 14:28:08.401231', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (247, 1, '国外', '2', 'benchmarkingRange', NULL, NULL, 'Y', '0', 'admin', '2021-01-04 14:27:29.196501', 'admin', '2021-01-04 14:28:12.33638', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (248, 0, '平均值', '1', 'benchmarkingType', NULL, NULL, 'Y', '0', 'admin', '2021-01-04 14:28:30.909946', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (249, 1, '先进值', '2', 'benchmarkingType', NULL, NULL, 'Y', '0', 'admin', '2021-01-04 14:28:39.185811', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (250, 2, '目标值', '3', 'benchmarkingType', NULL, NULL, 'Y', '0', 'admin', '2021-01-04 14:28:51.310619', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (259, 4, '无', '4', 'facility_grade', NULL, NULL, 'Y', '0', 'admin', '2021-01-14 19:46:35.10354', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (261, 222, '减速机', '221', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2021-01-14 20:09:15.221984', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (262, 0, 'Kwh/t', '200', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2021-01-15 09:18:39.949092', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (263, 0, 'm³/t', '201', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2021-01-15 09:18:56.338297', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (264, 0, 't/t', '202', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2021-01-15 09:19:06.924149', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (265, 0, 't/t', '204', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2021-01-15 09:19:18.314626', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (266, 0, 't/月', '205', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2021-01-15 09:19:25.691108', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (267, 1, '大于100KW', '100', 'ratedPower', NULL, NULL, 'Y', '0', 'admin', '2021-01-19 15:11:51.405442', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (268, 0, '千克', 'KG', 'sys_unit', NULL, NULL, 'N', '0', 'admin', '2021-01-25 10:55:34.237918', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (269, 166, 'kg/h', 'kg/h', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2021-04-28 09:37:25.757053', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (270, 168, 'Nm3', 'Nm3', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2021-04-28 09:40:27.52988', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (271, 0, 'g''f''j', '鼓风机', 'timeType_device', NULL, NULL, 'Y', '0', 'admin', '2021-04-28 12:44:39.078714', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (273, 1, '是', 'Y', 'pointFlag', NULL, NULL, 'Y', '0', 'admin', '2022-03-17 16:37:22.909262', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (274, 2, '否', 'N', 'pointFlag', NULL, NULL, 'Y', '0', 'admin', '2022-03-17 16:37:29.998807', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (282, 30, '元', 'RMB', 'sys_unit', NULL, NULL, 'N', '0', 'admin', '2022-03-23 20:44:39.690643', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (283, 0, '个', 'N', 'sys_unit', NULL, NULL, 'N', '0', 'admin', '2022-03-23 20:48:14.19775', NULL, NULL, '数量使用');
INSERT INTO "public"."sys_dict_data" VALUES (289, 0, '伏安', 'VA', 'sys_unit', NULL, NULL, 'N', '0', 'admin', '2023-03-05 08:47:55.834151', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (292, 5, '变频器', '3', 'sys_device_type', NULL, NULL, 'N', '0', 'admin', '2023-03-13 15:37:01.586237', 'admin', '2023-11-13 13:52:15.46934', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (293, 0, 'm³/h', 'm³h', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2023-03-13 14:45:57.610661', 'admin', '2025-05-15 13:46:40.095072', '立方米/每小时');
INSERT INTO "public"."sys_dict_data" VALUES (294, 4, '温湿度表', '4', 'sys_device_type', NULL, NULL, 'N', '0', 'admin', '2023-03-13 15:39:53.703452', 'admin', '2023-03-13 15:40:10.077409', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (295, 6, '压力表', '5', 'sys_device_type', NULL, NULL, 'N', '0', 'admin', '2023-03-13 15:40:25.937604', 'admin', '2023-11-13 13:52:33.050442', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (296, 0, '%RH', '%RH', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2023-03-19 13:33:59.842045', 'admin', '2023-03-19 13:34:31.09386', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (297, 3, '蒸汽表', '6', 'sys_device_type', NULL, NULL, 'N', '0', 'admin', '2023-11-13 13:51:34.895457', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (298, 0, 'kg/m³', 'kg/m³', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2023-11-13 16:27:23.407483', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (299, 0, 'Hz', 'Hz', 'sys_unit', NULL, NULL, 'Y', '0', 'admin', '2023-11-13 16:28:27.833669', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (300, 7, '氮气表', '7', 'sys_device_type', NULL, NULL, 'Y', '0', 'admin', '2023-11-14 10:33:49.285192', 'admin', '2023-11-14 10:34:10.665647', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (301, 0, '公司', '0', 'sys_node_category', NULL, 'primary', NULL, '0', 'admin', '2024-10-24 09:26:31.284023', 'admin', '2025-02-10 15:20:22.480894', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (303, 0, '计划量', '0', 'indicator_type', NULL, 'default', NULL, '0', 'admin', '2024-10-25 11:08:33.947788', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (304, 1, '结算量', '1', 'indicator_type', NULL, 'default', NULL, '0', 'admin', '2024-10-25 11:08:42.359537', 'admin', '2024-10-25 14:37:57.990436', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (306, 0, '采集类', 'COLLECT', 'alarm_record_category', NULL, 'default', NULL, '0', 'admin', '2024-10-28 14:56:09.886828', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (307, 0, '统计类', 'STATISTIC', 'alarm_record_category', NULL, 'default', NULL, '0', 'admin', '2024-10-28 14:56:35.765421', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (308, 1, '尖', '1', 'spikes_and_valleys', NULL, 'default', NULL, '0', 'admin', '2024-10-29 20:57:22.914498', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (309, 2, '峰', '2', 'spikes_and_valleys', NULL, 'default', NULL, '0', 'admin', '2024-10-29 20:57:31.744237', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (310, 3, '平', '3', 'spikes_and_valleys', NULL, 'default', NULL, '0', 'admin', '2024-10-29 20:57:38.902502', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (311, 4, '谷', '4', 'spikes_and_valleys', NULL, 'default', NULL, '0', 'admin', '2024-10-29 20:57:47.134973', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (313, 0, '一级', '1', 'benchmark_grade', NULL, 'default', NULL, '0', 'admin', '2024-11-18 13:56:20.553271', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (314, 0, '二级', '2', 'benchmark_grade', NULL, 'default', NULL, '0', 'admin', '2024-11-18 13:56:27.111059', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (315, 0, '三级', '3', 'benchmark_grade', NULL, 'default', NULL, '0', 'admin', '2024-11-18 13:56:32.864043', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (316, 0, '四级', '4', 'benchmark_grade', NULL, 'default', NULL, '0', 'admin', '2024-11-18 13:56:45.28483', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (317, 0, '五级', '5', 'benchmark_grade', NULL, 'default', NULL, '0', 'admin', '2024-11-18 13:56:53.592106', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (318, 0, '铜冶炼工艺', '1', 'benchmark_type', NULL, 'default', NULL, '0', 'admin', '2024-11-18 13:57:41.417077', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (319, 0, '粗铜工艺', '2', 'benchmark_type', NULL, 'default', NULL, '0', 'admin', '2024-11-18 13:57:50.78434', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (320, 0, '阳极铜工艺', '3', 'benchmark_type', NULL, 'default', NULL, '0', 'admin', '2024-11-18 13:58:23.612695', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (321, 0, '电解工序', '4', 'benchmark_type', NULL, 'default', NULL, '0', 'admin', '2024-11-18 13:58:31.151209', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (322, 4, '深谷', 'DEEP', 'electricity_price', NULL, 'primary', NULL, '0', 'admin', '2024-11-20 17:50:30.246435', 'admin', '2024-11-21 15:11:57.871553', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (323, 10, '天然气表', '10', 'sys_device_type', NULL, 'primary', NULL, '0', 'admin', '2025-02-08 13:03:42.626213', 'admin', '2025-02-08 13:04:48.696035', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (324, 1, '金锭', 'JD', 'product_type', '111', 'default', NULL, '0', 'admin', '2024-11-27 13:38:09.174889', 'admin', '2024-11-27 13:52:35.148367', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (325, 2, '银锭', 'yd', 'product_type', '银锭', 'default', NULL, '0', 'admin', '2024-11-27 13:42:23.473055', 'admin', '2024-11-27 13:51:20.260755', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (326, 3, '阴极铜', 'yjt', 'product_type', '阴极铜', 'default', NULL, '0', 'admin', '2024-11-27 13:42:53.014834', 'admin', '2024-11-27 13:51:30.346583', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (327, 4, '铅锭', 'qd', 'product_type', '铅锭', 'default', NULL, '0', 'admin', '2024-11-27 13:43:06.458396', 'admin', '2024-11-27 13:51:45.850117', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (328, 5, '锌锭', 'xd', 'product_type', '锌锭', 'default', NULL, '0', 'admin', '2024-11-27 13:43:34.113371', 'admin', '2024-11-27 13:51:36.227379', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (329, 6, '硫酸（100%）', 'LS', 'product_type', '硫酸（100%）', 'default', NULL, '0', 'admin', '2024-11-27 13:48:44.382442', 'admin', '2024-11-27 13:52:11.456043', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (330, 7, '二氧化硒', 'EYHX', 'product_type', '二氧化硒', 'default', NULL, '0', 'admin', '2024-11-27 13:49:32.112563', 'admin', '2024-11-27 13:52:19.93696', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (331, 8, '硒锭', 'XD', 'product_type', '硒锭', 'default', NULL, '0', 'admin', '2024-11-27 13:49:54.680577', 'admin', '2024-11-27 13:52:29.094252', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (332, 9, '三氧化二锑', 'SYHET', 'product_type', '三氧化二锑', 'default', NULL, '0', 'admin', '2024-11-27 13:53:16.210412', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (333, 10, '碲锭', 'DD', 'product_type', '碲锭', 'default', NULL, '0', 'admin', '2024-11-27 13:53:34.239391', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (334, 11, '海绵钯', 'HMB', 'product_type', '海绵钯', 'default', NULL, '0', 'admin', '2024-11-27 13:53:54.277563', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (335, 12, '海绵铂', 'HMBO', 'product_type', '海绵铂', 'default', NULL, '0', 'admin', '2024-11-27 13:54:11.030703', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (336, 13, '高铋铅', 'GBQ', 'product_type', '高铋铅', 'default', NULL, '0', 'admin', '2024-11-27 13:54:41.460386', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (337, 14, '高纯砷', 'GCS', 'product_type', '高纯砷', 'default', NULL, '0', 'admin', '2024-11-27 13:54:55.423304', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (338, 15, '硫系玻璃', 'LXBL', 'product_type', '硫系玻璃', 'default', NULL, '0', 'admin', '2024-11-27 13:55:13.754819', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (339, 16, '光学镜片锗片', 'GXJPZP', 'product_type', '光学镜片锗片', 'default', NULL, '0', 'admin', '2024-11-27 13:55:41.83218', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (340, 17, '高纯硒', 'GCX', 'product_type', '高纯硒', 'default', NULL, '0', 'admin', '2024-11-27 13:56:05.86038', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (341, 18, '高纯碲', 'GCD', 'product_type', '高纯碲', 'default', NULL, '0', 'admin', '2024-11-27 13:56:26.482637', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (342, 19, '高纯锑', 'GCT', 'product_type', '高纯锑', 'default', NULL, '0', 'admin', '2024-11-27 13:56:41.170861', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (343, 20, '高纯锌', 'GCXIN', 'product_type', '高纯锌', 'default', NULL, '0', 'admin', '2024-11-27 13:57:04.434945', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (344, 21, '高纯镉', 'GCG', 'product_type', '高纯镉', 'default', NULL, '0', 'admin', '2024-11-27 13:57:21.746453', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (345, 22, '砷', 'SHEN', 'product_type', '砷', 'default', NULL, '0', 'admin', '2024-11-27 13:57:37.248315', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (346, 23, '铁精粉', 'TJF', 'product_type', '铁精粉', 'default', NULL, '0', 'admin', '2024-11-27 13:58:04.482386', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (347, 24, '氧', 'YANG', 'product_type', '氧', 'default', NULL, '0', 'admin', '2024-11-27 13:58:23.985044', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (348, 25, '氩', 'YA', 'product_type', '氩', 'default', NULL, '0', 'admin', '2024-11-27 13:58:35.744723', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (349, 26, '三氧化二砷（精）', 'SYHES', 'product_type', '三氧化二砷（精）', 'default', NULL, '0', 'admin', '2024-11-27 13:58:53.380441', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (350, 27, '硫酸铜', 'SST', 'product_type', '硫酸铜', 'default', NULL, '0', 'admin', '2024-11-27 13:59:09.945275', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (351, 28, '硫酸镍', 'LSN', 'product_type', '硫酸镍', 'default', NULL, '0', 'admin', '2024-11-27 13:59:26.109383', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (352, 29, '铜尾渣', 'TWZ', 'product_type', '铜尾渣', 'default', NULL, '0', 'admin', '2024-11-27 13:59:40.969165', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (353, 30, '水淬渣', 'SCZ', 'product_type', '水淬渣', 'default', NULL, '0', 'admin', '2024-11-27 13:59:57.587416', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (354, 31, '塑料颗粒', 'SLKL', 'product_type', '塑料颗粒', 'default', NULL, '0', 'admin', '2024-11-27 14:00:12.908081', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (355, 32, '海绵镉', 'HMG', 'product_type', '海绵镉', 'default', NULL, '0', 'admin', '2024-11-27 14:00:27.680026', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (356, 33, '粗锑', 'CD', 'product_type', '粗锑', 'default', NULL, '0', 'admin', '2024-11-27 14:00:40.97864', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (357, 223, '竟成总水表', '222', 'facility_type', NULL, NULL, 'Y', '0', 'admin', '2025-05-15 11:13:43.475309', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (358, 0, '竟成水表', '11', 'sys_device_type', NULL, 'default', NULL, '0', 'admin', '2025-05-15 11:40:48.078969', 'admin', '2025-05-15 11:41:01.241522', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_type";
CREATE TABLE "public"."sys_dict_type" (
  "dict_id" int8 NOT NULL DEFAULT nextval('dict_id_seq'::regclass),
  "dict_name" varchar(100) COLLATE "pg_catalog"."default",
  "dict_type" varchar(100) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_type"."dict_id" IS '字典主键';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_name" IS '字典名称';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_type"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dict_type"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dict_type"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_type"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dict_type"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_type"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_type" IS '字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO "public"."sys_dict_type" VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-04 19:07:43.11073', '用户性别列表');
INSERT INTO "public"."sys_dict_type" VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO "public"."sys_dict_type" VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO "public"."sys_dict_type" VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO "public"."sys_dict_type" VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO "public"."sys_dict_type" VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO "public"."sys_dict_type" VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (11, '单位管理', 'sys_unit', '0', 'admin', '2020-02-05 16:07:55.541918', 'admin', '2020-02-10 10:29:47.003345', '单位基础数据');
INSERT INTO "public"."sys_dict_type" VALUES (14, '是否默认', 'sys_is_default', '0', 'admin', '2020-02-06 20:51:39.440806', 'admin', '2020-02-06 21:17:03.68642', '字典管理中设置字典数据是否默认');
INSERT INTO "public"."sys_dict_type" VALUES (15, '指标类型', 'sys_index_category', '0', 'admin', '2020-02-08 13:18:13.910805', 'admin', '2020-02-24 23:26:15.780699', '系统指标类型，1-能源类，2-产品类，3-能效类，4-经营类，5-其他');
INSERT INTO "public"."sys_dict_type" VALUES (16, '计量器具类型', 'sys_device_type', '0', 'admin', '2020-02-08 13:23:04.83056', 'admin', '2020-02-08 13:23:17.282299', '计量器具类型');
INSERT INTO "public"."sys_dict_type" VALUES (18, '计量器具状态', 'meter_status', '0', 'admin', '2020-02-11 15:02:53.635506', 'admin', '2020-02-11 15:03:07.91928', '计量器具的使用状态');
INSERT INTO "public"."sys_dict_type" VALUES (19, '参数数据类型', 'data_type', '0', 'admin', '2020-02-12 11:40:42.477204', NULL, NULL, '标准参数配置数据类型');
INSERT INTO "public"."sys_dict_type" VALUES (20, '尖峰平谷配置', 'electricity_price', '0', 'admin', '2020-02-18 09:22:59.797218', 'admin', '2024-11-05 10:05:46.139557', '模型配置管理-尖峰平谷配置-店家配置-类别名称');
INSERT INTO "public"."sys_dict_type" VALUES (21, '应用模型类型', 'sys_model_type', '0', 'admin', '2020-02-19 15:11:32.24305', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (22, '能耗等级', 'facility_grade', '0', 'admin', '2020-02-24 10:48:52.898261', 'admin', '2020-02-24 11:45:51.597397', '设备档案的能耗等级');
INSERT INTO "public"."sys_dict_type" VALUES (23, '设备类型', 'facility_type', '0', 'admin', '2020-02-24 10:50:00.374611', 'admin', '2020-02-24 11:46:01.315806', '设备档案管理的设备类型');
INSERT INTO "public"."sys_dict_type" VALUES (24, '使用分厂', 'branch_factory', '0', 'admin', '2020-02-24 10:51:20.854682', 'admin', '2020-02-26 09:38:51.20382', '设备档案管理的使用分厂');
INSERT INTO "public"."sys_dict_type" VALUES (26, '指标节点类型', 'sys_node_category', '0', 'admin', '2020-02-29 09:52:58.304041', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (27, '预警报警时段', 'warn_time_slot', '0', 'admin', '2020-03-03 23:28:15.743757', 'admin', '2020-03-03 23:42:39.752263', NULL);
INSERT INTO "public"."sys_dict_type" VALUES (29, '统计时间', 'timeType', '0', 'admin', '2020-03-04 17:28:14.789064', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (30, '预警报警类型', 'alarm_type', '0', 'admin', '2020-03-11 09:39:40.303676', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (32, '报警级别', 'alarm_level', '0', 'admin', '2020-03-14 13:39:42.669775', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (34, '组态图类型', 'svgType', '0', 'admin', '2020-03-19 14:41:47.964065', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (35, '用能统计时间', 'dateType', '0', 'admin', '2020-03-19 17:57:35.757909', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (36, '预报警限值类型', 'limit_type', '0', 'admin', '2020-03-19 18:46:43.074918', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (37, '是否启用开关', 'sys_is_enable', '0', 'admin', '2020-03-20 15:20:12.833548', 'admin', '2020-03-20 15:20:48.78079', NULL);
INSERT INTO "public"."sys_dict_type" VALUES (38, '阶段数据录入时间类型', 'entryDataTime', '0', 'admin', '2020-03-25 17:34:33.101074', 'admin', '2020-03-25 17:44:06.475823', NULL);
INSERT INTO "public"."sys_dict_type" VALUES (39, '期间', 'period', '0', 'admin', '2024-10-12 11:06:49.101922', 'admin', '2024-10-28 10:59:25.442668', '辅助录入-产品产量录入/能源仪表录入/能源指标录入-期间
能耗对比分析-科室能耗分析/能源指标考试/设备能耗分析/综合能耗分析-期间');
INSERT INTO "public"."sys_dict_type" VALUES (40, '综合能耗统计', 'statisticalType', '0', 'admin', '2020-12-09 14:54:30.709333', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (41, '政策法规分类', 'policy_sort', '0', 'admin', '2020-04-23 14:50:57.098119', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (42, '工序单耗统计_产品类型', 'rep_product_type', '0', 'admin', '2020-12-29 11:16:35.241259', NULL, NULL, '能耗统计分析——工序单耗统计报表的产品类型');
INSERT INTO "public"."sys_dict_type" VALUES (43, '能源品种', 'variety_type', '0', 'admin', '2020-12-29 11:18:14.182068', NULL, NULL, '能耗统计分析——工序单耗统计功能——报表中的能源品种');
INSERT INTO "public"."sys_dict_type" VALUES (44, '下拉选择年', 'selectyear', '0', 'admin', '2020-12-29 11:19:12.445183', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (45, '排班班值次', 'workforce_type', '0', 'admin', '2020-05-08 10:59:30.256621', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (46, '轮值类型', 'rotation_type', '0', 'admin', '2020-05-09 09:06:02.242948', NULL, NULL, '排班轮值类型');
INSERT INTO "public"."sys_dict_type" VALUES (47, '是否自动排班', 'isAutoRostering', '0', 'admin', '2020-05-12 16:45:07.385365', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (48, '重点设备分析', 'timeType_device', '0', 'admin', '2020-05-27 09:22:12.04352', 'admin', '2020-05-27 09:22:27.654906', NULL);
INSERT INTO "public"."sys_dict_type" VALUES (49, '峰平谷数据统计', 'electricDate', '0', 'admin', '2020-06-02 18:11:28.856169', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (51, '报表类型', 'report_form', '0', 'admin', '2020-12-29 16:42:30.165937', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (52, '排名指标', 'indicatorName', '0', 'admin', '2020-12-14 15:19:58.653879', NULL, NULL, '重点设备能耗');
INSERT INTO "public"."sys_dict_type" VALUES (53, '标杆范围', 'benchmarkingRange', '0', 'admin', '2021-01-04 14:26:48.738292', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (54, '标杆类型', 'benchmarkingType', '0', 'admin', '2021-01-04 14:27:04.112708', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (55, '能源计划', 'energyPlan', '0', 'admin', '2021-01-06 13:49:12.248766', 'admin', '2021-01-06 13:50:47.943031', NULL);
INSERT INTO "public"."sys_dict_type" VALUES (56, '额定功率', 'ratedPower', '0', 'admin', '2021-01-19 15:11:29.009467', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (58, '是否重点设备', 'pointFlag', '0', 'admin', '2022-03-17 16:37:02.350775', 'admin', '2022-03-23 09:43:16.317908', NULL);
INSERT INTO "public"."sys_dict_type" VALUES (59, '产品类型', 'product_type', '0', 'admin', '2024-10-25 10:55:02.77796', 'admin', '2024-10-25 10:55:35.693225', '辅助录入-产品产量录入-产品类型');
INSERT INTO "public"."sys_dict_type" VALUES (60, '辅助录入-指标类型', 'indicator_type', '0', 'admin', '2024-10-25 11:06:05.899657', 'admin', '2024-10-28 10:19:14.223878', '辅助录入-能源指标录入-指标类型');
INSERT INTO "public"."sys_dict_type" VALUES (62, '报警管理-指标类型', 'alarm_record_category', '0', 'admin', '2024-10-28 14:55:53.080882', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (63, '尖峰平谷配置', 'spikes_and_valleys', '0', 'admin', '2024-10-29 20:57:01.692144', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (65, '标杆类型', 'benchmark_type', '0', 'admin', '2024-11-18 13:55:20.66247', 'admin', '2024-11-18 13:56:02.2514', NULL);
INSERT INTO "public"."sys_dict_type" VALUES (66, '标杆等级', 'benchmark_grade', '0', 'admin', '2024-11-18 13:55:53.803814', NULL, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (67, '测试', 'test', '0', 'admin', '2025-03-17 12:34:39.090407', 'admin', '2025-03-17 12:35:01.005397', '测试123');

-- ----------------------------
-- Table structure for sys_enercoefficient
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_enercoefficient";
CREATE TABLE "public"."sys_enercoefficient" (
  "enerid" int4,
  "coefficient" numeric(18,4),
  "coefficient2" numeric(18,4),
  "execdate" date,
  "opr_man" varchar(20) COLLATE "pg_catalog"."default",
  "opr_time" date,
  "mod_man" varchar(20) COLLATE "pg_catalog"."default",
  "mod_time" date,
  "note" varchar(100) COLLATE "pg_catalog"."default",
  "ecid" int4 NOT NULL DEFAULT nextval('sys_enercoefficient_seq'::regclass)
)
;
COMMENT ON COLUMN "public"."sys_enercoefficient"."enerid" IS '能源ID';
COMMENT ON COLUMN "public"."sys_enercoefficient"."coefficient" IS '等价折标系数';
COMMENT ON COLUMN "public"."sys_enercoefficient"."coefficient2" IS '当量折标系数';
COMMENT ON COLUMN "public"."sys_enercoefficient"."execdate" IS '执行日期';
COMMENT ON COLUMN "public"."sys_enercoefficient"."opr_man" IS '操作人';
COMMENT ON COLUMN "public"."sys_enercoefficient"."opr_time" IS '操作时间';
COMMENT ON COLUMN "public"."sys_enercoefficient"."mod_man" IS '更新人';
COMMENT ON COLUMN "public"."sys_enercoefficient"."mod_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_enercoefficient"."note" IS '备注';
COMMENT ON TABLE "public"."sys_enercoefficient" IS '能源品种折标系数';

-- ----------------------------
-- Records of sys_enercoefficient
-- ----------------------------

-- ----------------------------
-- Table structure for sys_energy
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_energy";
CREATE TABLE "public"."sys_energy" (
  "enername" varchar(50) COLLATE "pg_catalog"."default",
  "muid" varchar(32) COLLATE "pg_catalog"."default",
  "enerclassid" int4,
  "enersno" varchar(20) COLLATE "pg_catalog"."default",
  "isstorage" varchar(10) COLLATE "pg_catalog"."default",
  "opr_man" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "opr_time" timestamp(0),
  "mod_man" varchar(20) COLLATE "pg_catalog"."default",
  "mod_time" timestamp(0),
  "note" varchar(100) COLLATE "pg_catalog"."default",
  "enerid" int4 NOT NULL DEFAULT nextval('sys_energy_seq'::regclass),
  "coefficient" numeric(18,4),
  "execdate" date,
  "price" numeric(18,2),
  "emission_factors" numeric(18,4),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_energy"."enername" IS '能源名称';
COMMENT ON COLUMN "public"."sys_energy"."muid" IS '计量单位';
COMMENT ON COLUMN "public"."sys_energy"."enerclassid" IS '能源类别ID';
COMMENT ON COLUMN "public"."sys_energy"."enersno" IS '能源编号';
COMMENT ON COLUMN "public"."sys_energy"."isstorage" IS '是否存储、Y为是、N为否';
COMMENT ON COLUMN "public"."sys_energy"."opr_man" IS '操作人';
COMMENT ON COLUMN "public"."sys_energy"."opr_time" IS '操作时间';
COMMENT ON COLUMN "public"."sys_energy"."mod_man" IS '修改人';
COMMENT ON COLUMN "public"."sys_energy"."mod_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_energy"."note" IS '备注';
COMMENT ON COLUMN "public"."sys_energy"."coefficient" IS '等价折标系数';
COMMENT ON COLUMN "public"."sys_energy"."execdate" IS '执行日期';
COMMENT ON COLUMN "public"."sys_energy"."price" IS '单价';
COMMENT ON COLUMN "public"."sys_energy"."emission_factors" IS '排放因子';
COMMENT ON COLUMN "public"."sys_energy"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_energy"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_energy"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_energy"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_energy"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_energy" IS '系统选用能源品种';

-- ----------------------------
-- Records of sys_energy
-- ----------------------------
INSERT INTO "public"."sys_energy" VALUES ('国网电', '千瓦时', 209, 'electric', '否', 'admin', NULL, 'admin', NULL, NULL, 38, 1.2290, NULL, 1.00, 0.5703, 'admin', '2024-11-05 09:52:55', 'admin', '2024-11-21 14:33:29', NULL);
INSERT INTO "public"."sys_energy" VALUES ('天然气', '立方米', 219, 'naturalgas', '否', 'admin', NULL, 'admin', NULL, '1', 41, 0.7143, NULL, 1.00, 1.0000, 'admin', '2024-12-07 14:07:20', 'admin', '2024-12-07 14:07:29', NULL);
INSERT INTO "public"."sys_energy" VALUES ('蒸汽', '立方米', 218, 'steam', '否', 'admin', NULL, 'admin', NULL, '1', 43, 12.1430, NULL, 1.00, 1.0000, 'admin', '2024-12-07 14:09:55', 'admin', '2024-12-07 17:17:08', NULL);
INSERT INTO "public"."sys_energy" VALUES ('压缩空气', '立方米', 220, 'compressedair', '否', 'admin', NULL, 'admin', NULL, '1', 44, 1.4571, NULL, 1.00, 1.0000, 'admin', '2024-12-07 14:10:38', 'admin', '2024-12-17 09:35:53', NULL);
INSERT INTO "public"."sys_energy" VALUES ('自来水', '吨', 223, 'water', '否', 'admin', NULL, 'admin', NULL, '1', 40, 0.9428, NULL, 1.00, 1.0000, 'admin', '2024-12-07 14:05:58', 'admin', '2024-12-17 09:35:13', NULL);

-- ----------------------------
-- Table structure for sys_energy_template
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_energy_template";
CREATE TABLE "public"."sys_energy_template" (
  "name" varchar(20) COLLATE "pg_catalog"."default",
  "id" int4 NOT NULL DEFAULT nextval('sys_enerclass_seq'::regclass),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_energy_template"."name" IS '能源类别名称';
COMMENT ON COLUMN "public"."sys_energy_template"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_energy_template"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_energy_template"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_energy_template"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_energy_template"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_energy_template" IS '系统能源品种';

-- ----------------------------
-- Records of sys_energy_template
-- ----------------------------
INSERT INTO "public"."sys_energy_template" VALUES ('水', 223, 'admin', '2025-06-03 15:30:20.176006', 'admin', '2025-06-03 17:33:26.242022', 'shu');
INSERT INTO "public"."sys_energy_template" VALUES ('天然气', 219, 'admin', '2025-06-03 17:35:43.246634', 'admin', '2025-06-03 17:35:43.246634', NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job";
CREATE TABLE "public"."sys_job" (
  "job_id" int8 NOT NULL DEFAULT nextval('job_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default",
  "misfire_policy" varchar(20) COLLATE "pg_catalog"."default" DEFAULT 3,
  "concurrent" char(1) COLLATE "pg_catalog"."default" DEFAULT 1,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_job"."job_id" IS '任务ID';
COMMENT ON COLUMN "public"."sys_job"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_job"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."sys_job"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."sys_job"."cron_expression" IS 'cron执行表达式';
COMMENT ON COLUMN "public"."sys_job"."misfire_policy" IS '计划执行错误策略（1立即执行 2执行一次 3放弃执行）';
COMMENT ON COLUMN "public"."sys_job"."concurrent" IS '是否并发执行（0允许 1禁止）';
COMMENT ON COLUMN "public"."sys_job"."status" IS '状态（0正常 1暂停）';
COMMENT ON COLUMN "public"."sys_job"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_job"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_job"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_job"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_job"."remark" IS '备注信息';
COMMENT ON TABLE "public"."sys_job" IS '定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job_log";
CREATE TABLE "public"."sys_job_log" (
  "job_log_id" int8 NOT NULL DEFAULT nextval('job_log_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "job_message" varchar(500) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "exception_info" varchar(2000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_job_log"."job_log_id" IS '任务日志ID';
COMMENT ON COLUMN "public"."sys_job_log"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_job_log"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."sys_job_log"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."sys_job_log"."job_message" IS '日志信息';
COMMENT ON COLUMN "public"."sys_job_log"."status" IS '执行状态（0正常 1失败）';
COMMENT ON COLUMN "public"."sys_job_log"."exception_info" IS '异常信息';
COMMENT ON COLUMN "public"."sys_job_log"."create_time" IS '创建时间';
COMMENT ON TABLE "public"."sys_job_log" IS '定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_logininfor";
CREATE TABLE "public"."sys_logininfor" (
  "info_id" int8 NOT NULL DEFAULT nextval('info_id_seq'::regclass),
  "user_name" varchar(50) COLLATE "pg_catalog"."default",
  "ipaddr" varchar(50) COLLATE "pg_catalog"."default",
  "login_location" varchar(500) COLLATE "pg_catalog"."default",
  "browser" varchar(50) COLLATE "pg_catalog"."default",
  "os" varchar(50) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "msg" varchar(500) COLLATE "pg_catalog"."default",
  "login_time" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_logininfor"."info_id" IS '访问ID';
COMMENT ON COLUMN "public"."sys_logininfor"."user_name" IS '用户账号';
COMMENT ON COLUMN "public"."sys_logininfor"."ipaddr" IS '登录IP地址';
COMMENT ON COLUMN "public"."sys_logininfor"."login_location" IS '登录地点';
COMMENT ON COLUMN "public"."sys_logininfor"."browser" IS '浏览器类型';
COMMENT ON COLUMN "public"."sys_logininfor"."os" IS '操作系统';
COMMENT ON COLUMN "public"."sys_logininfor"."status" IS '登录状态（0成功 1失败）';
COMMENT ON COLUMN "public"."sys_logininfor"."msg" IS '提示消息';
COMMENT ON COLUMN "public"."sys_logininfor"."login_time" IS '访问时间';
COMMENT ON COLUMN "public"."sys_logininfor"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_logininfor"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_logininfor"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_logininfor"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_logininfor"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_logininfor" IS '系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO "public"."sys_logininfor" VALUES (9716, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-05-24 11:47:23.05417', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9717, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-05-24 13:33:46.113202', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9718, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2025-05-24 14:26:40.49106', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9719, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-24 14:26:48.686525', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9720, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-05-24 14:35:55.59649', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9721, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-24 14:35:55.685921', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9722, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-24 14:36:59.556055', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9723, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-05-24 15:00:20.072692', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9724, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-24 15:01:11.278881', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9725, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-24 16:54:09.541114', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9726, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-26 09:58:06.844651', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9727, 'admin', '192.168.110.243', '内网IP', 'Chrome 13', 'Mac OS X', '1', '用户不存在/密码错误', '2025-05-26 13:48:48.084541', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9728, 'admin', '192.168.110.243', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-05-26 13:49:21.218194', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9729, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-26 15:04:41.216208', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9730, 'admin', '192.168.110.77', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-05-26 17:22:10.034053', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9731, 'admin', '192.168.110.243', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-26 17:22:31.357646', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9732, 'admin', '192.168.110.77', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-26 17:23:32.034589', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9733, 'admin', '192.168.110.77', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-05-27 09:50:35.166157', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9734, 'admin', '192.168.110.77', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-27 09:51:58.515286', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9735, 'admin', '192.168.110.77', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-03 10:24:03.860658', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9736, 'admin', '192.168.110.77', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-06-03 11:10:51.464617', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9737, 'admin', '192.168.110.77', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-03 11:14:46.377334', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9738, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 11:25:56.216633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9739, 'tanyuanjie', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2025-06-03 11:30:25.429914', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9740, 'tanyuanjie', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2025-06-03 11:33:08.406826', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9741, 'tanyuanjie', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2025-06-03 11:38:01.040858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9742, 'tanyuanjie', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2025-06-03 11:39:08.377422', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9743, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 11:41:10.046929', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9744, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 11:41:59.869494', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9745, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 11:47:54.781585', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9746, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 11:49:12.16475', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9747, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 11:49:33.652754', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9748, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 11:49:59.625872', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9749, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 11:54:26.795912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9750, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 13:36:38.765779', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9751, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 13:44:11.205526', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9752, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 13:44:58.553312', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9753, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 13:45:24.604452', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9754, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 13:46:01.640755', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9755, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 14:03:21.13966', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9756, 'guestUser', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2025-06-03 14:12:04.955688', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9757, 'admin', '192.168.110.77', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-04 09:29:35.611772', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9758, 'admin', '192.168.110.243', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-06-04 14:43:02.357', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9759, 'admin', '192.168.110.77', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2025-06-09 15:27:21.507639', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_logininfor" VALUES (9760, 'admin', '192.168.110.77', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-06-09 15:29:29.740351', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
  "menu_id" int8 NOT NULL DEFAULT nextval('menu_id_seq'::regclass),
  "menu_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" int8 DEFAULT 0,
  "order_num" int4 DEFAULT 0,
  "path" varchar(200) COLLATE "pg_catalog"."default",
  "component" varchar(255) COLLATE "pg_catalog"."default",
  "is_frame" varchar(32) COLLATE "pg_catalog"."default" DEFAULT 1,
  "menu_type" char(1) COLLATE "pg_catalog"."default",
  "visible" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "perms" varchar(100) COLLATE "pg_catalog"."default",
  "icon" varchar(100) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "page_parameter" varchar(255) COLLATE "pg_catalog"."default",
  "query" varchar(255) COLLATE "pg_catalog"."default",
  "status" varchar(2) COLLATE "pg_catalog"."default",
  "is_cache" char(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_menu"."menu_id" IS '菜单ID';
COMMENT ON COLUMN "public"."sys_menu"."menu_name" IS '菜单名称';
COMMENT ON COLUMN "public"."sys_menu"."parent_id" IS '父菜单ID';
COMMENT ON COLUMN "public"."sys_menu"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_menu"."path" IS '路由地址';
COMMENT ON COLUMN "public"."sys_menu"."component" IS '组件路径';
COMMENT ON COLUMN "public"."sys_menu"."is_frame" IS '是否为外链（0是 1否）';
COMMENT ON COLUMN "public"."sys_menu"."menu_type" IS '菜单类型（M目录 C菜单 F按钮）';
COMMENT ON COLUMN "public"."sys_menu"."visible" IS '菜单状态（0显示 1隐藏）';
COMMENT ON COLUMN "public"."sys_menu"."perms" IS '权限标识';
COMMENT ON COLUMN "public"."sys_menu"."icon" IS '菜单图标';
COMMENT ON COLUMN "public"."sys_menu"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_menu"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_menu"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_menu"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_menu"."page_parameter" IS '页面传递参数';
COMMENT ON COLUMN "public"."sys_menu"."query" IS '路由参数';
COMMENT ON COLUMN "public"."sys_menu"."status" IS '菜单状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_menu"."is_cache" IS '是否缓存（0缓存 1不缓存）';
COMMENT ON TABLE "public"."sys_menu" IS '菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "public"."sys_menu" VALUES (1, '系统管理中心', 2695, 2000, 'system', NULL, '1', 'M', '0', '', 'system', 'admin', '2020-02-06 15:36:08.80143', 'admin', '2025-04-13 20:45:34.374412', '系统管理目录', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2, '系统监控管理', 2695, 3000, 'monitor', NULL, '1', 'M', '0', '', 'monitor', 'admin', '2020-02-06 15:36:08.81948', 'admin', '2025-04-13 20:45:45.119608', '系统监控目录', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (3, '系统代码工具', 2695, 4000, 'tool', NULL, '1', 'M', '0', '', 'tool', 'admin', '2020-02-06 15:36:08.839811', 'admin', '2025-04-13 20:45:54.716543', '系统工具目录', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (24, '模型配置中心', 2695, 1930, 'modelconfiguration', NULL, '1', 'M', '0', '', 'system', 'admin', '2020-02-06 17:27:31.255148', 'admin', '2025-04-13 20:44:56.557683', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (49, '采集指标模版管理', 24, 12, 'template', 'basicsetting/template/index', '1', 'C', '1', 'basicsetting:template:list', 'dict', 'admin', '2018-03-01 00:00:00', 'admin', '2024-10-12 15:28:08.947213', '采集参数模板菜单', NULL, NULL, '1', '0');
INSERT INTO "public"."sys_menu" VALUES (51, '采集参数模板查询', 49, 1, '#', '', '1', 'F', '0', 'basicsetting:template:query', '#', 'admin', '2018-03-01 00:00:00', 'fanxinfu', '2020-02-15 11:49:08.574771', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (52, '采集参数模板新增', 49, 2, '#', '', '1', 'F', '0', 'basicsetting:template:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (53, '采集参数模板修改', 49, 3, '#', '', '1', 'F', '0', 'basicsetting:template:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (54, '采集参数模板删除', 49, 4, '#', '', '1', 'F', '0', 'basicsetting:template:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (55, '采集参数模板导出', 49, 5, '#', '', '1', 'F', '0', 'basicsetting:template:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '1', 'C', '0', 'system:user:list', 'user', 'admin', '2020-02-06 15:36:08.875804', 'ry', '2020-02-06 15:36:08.875804', '用户管理菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '1', 'C', '0', 'system:role:list', 'peoples', 'admin', '2020-02-06 15:36:08.894123', 'ry', '2020-02-06 15:36:08.894123', '角色管理菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '1', 'C', '0', 'system:menu:list', 'tree-table', 'admin', '2020-02-06 15:36:08.910519', 'ry', '2020-02-06 15:36:08.910519', '菜单管理菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '1', 'C', '0', 'system:dept:list', 'tree', 'admin', '2020-02-06 15:36:08.92862', 'ry', '2020-02-06 15:36:08.92862', '部门管理菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '1', 'C', '0', 'system:post:list', 'post', 'admin', '2020-02-06 15:36:08.954764', 'ry', '2020-02-06 15:36:08.954764', '岗位管理菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '1', 'C', '0', 'system:dict:list', 'dict', 'admin', '2020-02-06 15:36:08.972828', 'ry', '2020-02-06 15:36:08.972828', '字典管理菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '1', 'C', '0', 'system:config:list', 'edit', 'admin', '2020-02-06 15:36:08.990987', 'ry', '2020-02-06 15:36:08.990987', '参数设置菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '1', 'C', '1', 'system:notice:list', 'message', 'admin', '2020-02-06 15:36:09.012946', 'admin', '2023-02-28 15:54:10.952758', '通知公告菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (108, '日志管理', 1, 9, 'log', '', '1', 'M', '0', '', 'log', 'admin', '2020-02-06 15:36:09.03117', 'admin', '2025-04-14 15:20:31.21883', '日志管理菜单', NULL, NULL, '0', '1');
INSERT INTO "public"."sys_menu" VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '1', 'C', '0', 'monitor:online:list', 'online', 'admin', '2020-02-06 15:36:09.049317', 'ry', '2020-02-06 15:36:09.049317', '在线用户菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '1', 'C', '0', 'monitor:job:list', 'job', 'admin', '2020-02-06 15:36:09.067458', 'ry', '2020-02-06 15:36:09.067458', '定时任务菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '1', 'C', '0', 'monitor:druid:list', 'druid', 'admin', '2020-02-06 15:36:09.085466', 'ry', '2020-02-06 15:36:09.085466', '数据监控菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '1', 'C', '0', 'monitor:server:list', 'server', 'admin', '2020-02-06 15:36:09.105547', 'ry', '2020-02-06 15:36:09.105547', '服务监控菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (113, '表单构建', 3, 1, 'build', 'tool/build/index', '1', 'C', '0', 'tool:build:list', 'build', 'admin', '2020-02-06 15:36:09.123649', 'ry', '2020-02-06 15:36:09.123649', '表单构建菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (114, '代码生成', 3, 2, 'gen', 'tool/gen/index', '1', 'C', '0', 'tool:gen:list', 'code', 'admin', '2020-02-06 15:36:09.143687', 'ry', '2020-02-06 15:36:09.143687', '代码生成菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (115, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '1', 'C', '0', 'tool:swagger:list', 'swagger', 'admin', '2020-02-06 15:36:09.179584', 'ry', '2020-02-06 15:36:09.179584', '系统接口菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '1', 'C', '0', 'monitor:operlog:list', 'form', 'admin', '2020-02-06 15:36:09.199647', 'ry', '2020-02-06 15:36:09.199647', '操作日志菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '1', 'C', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2020-02-06 15:36:09.217701', 'ry', '2020-02-06 15:36:09.217701', '登录日志菜单', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1001, '用户查询', 100, 1, '', '', '1', 'F', '0', 'system:user:query', '#', 'admin', '2020-02-06 15:36:09.235858', 'ry', '2020-02-06 15:36:09.235858', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1002, '用户新增', 100, 2, '', '', '1', 'F', '0', 'system:user:add', '#', 'admin', '2020-02-06 15:36:09.253886', 'ry', '2020-02-06 15:36:09.253886', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1003, '用户修改', 100, 3, '', '', '1', 'F', '0', 'system:user:edit', '#', 'admin', '2020-02-06 15:36:09.273928', 'ry', '2020-02-06 15:36:09.273928', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1004, '用户删除', 100, 4, '', '', '1', 'F', '0', 'system:user:remove', '#', 'admin', '2020-02-06 15:36:09.291972', 'ry', '2020-02-06 15:36:09.291972', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1005, '用户导出', 100, 5, '', '', '1', 'F', '0', 'system:user:export', '#', 'admin', '2020-02-06 15:36:09.345822', 'ry', '2020-02-06 15:36:09.345822', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1006, '用户导入', 100, 6, '', '', '1', 'F', '0', 'system:user:import', '#', 'admin', '2020-02-06 15:36:09.365958', 'ry', '2020-02-06 15:36:09.365958', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1007, '重置密码', 100, 7, '', '', '1', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2020-02-06 15:36:09.386059', 'ry', '2020-02-06 15:36:09.386059', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1008, '角色查询', 101, 1, '', '', '1', 'F', '0', 'system:role:query', '#', 'admin', '2020-02-06 15:36:09.404203', 'ry', '2020-02-06 15:36:09.404203', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1009, '角色新增', 101, 2, '', '', '1', 'F', '0', 'system:role:add', '#', 'admin', '2020-02-06 15:36:09.422211', 'ry', '2020-02-06 15:36:09.422211', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1010, '角色修改', 101, 3, '', '', '1', 'F', '0', 'system:role:edit', '#', 'admin', '2020-02-06 15:36:09.440256', 'ry', '2020-02-06 15:36:09.440256', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1011, '角色删除', 101, 4, '', '', '1', 'F', '0', 'system:role:remove', '#', 'admin', '2020-02-06 15:36:09.458308', 'ry', '2020-02-06 15:36:09.458308', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1012, '角色导出', 101, 5, '', '', '1', 'F', '0', 'system:role:export', '#', 'admin', '2020-02-06 15:36:09.478348', 'ry', '2020-02-06 15:36:09.478348', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1013, '菜单查询', 102, 1, '', '', '1', 'F', '0', 'system:menu:query', '#', 'admin', '2020-02-06 15:36:09.496412', 'ry', '2020-02-06 15:36:09.496412', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1014, '菜单新增', 102, 2, '', '', '1', 'F', '0', 'system:menu:add', '#', 'admin', '2020-02-06 15:36:09.516397', 'ry', '2020-02-06 15:36:09.516397', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1015, '菜单修改', 102, 3, '', '', '1', 'F', '0', 'system:menu:edit', '#', 'admin', '2020-02-06 15:36:09.534431', 'ry', '2020-02-06 15:36:09.534431', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1016, '菜单删除', 102, 4, '', '', '1', 'F', '0', 'system:menu:remove', '#', 'admin', '2020-02-06 15:36:09.552594', 'ry', '2020-02-06 15:36:09.552594', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1017, '部门查询', 103, 1, '', '', '1', 'F', '0', 'system:dept:query', '#', 'admin', '2020-02-06 15:36:09.570746', 'ry', '2020-02-06 15:36:09.570746', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1018, '部门新增', 103, 2, '', '', '1', 'F', '0', 'system:dept:add', '#', 'admin', '2020-02-06 15:36:09.589087', 'ry', '2020-02-06 15:36:09.589087', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1019, '部门修改', 103, 3, '', '', '1', 'F', '0', 'system:dept:edit', '#', 'admin', '2020-02-06 15:36:09.607204', 'ry', '2020-02-06 15:36:09.607204', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1020, '部门删除', 103, 4, '', '', '1', 'F', '0', 'system:dept:remove', '#', 'admin', '2020-02-06 15:36:09.625365', 'ry', '2020-02-06 15:36:09.625365', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1021, '岗位查询', 104, 1, '', '', '1', 'F', '0', 'system:post:query', '#', 'admin', '2020-02-06 15:36:09.643366', 'ry', '2020-02-06 15:36:09.643366', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1022, '岗位新增', 104, 2, '', '', '1', 'F', '0', 'system:post:add', '#', 'admin', '2020-02-06 15:36:09.661523', 'ry', '2020-02-06 15:36:09.661523', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1023, '岗位修改', 104, 3, '', '', '1', 'F', '0', 'system:post:edit', '#', 'admin', '2020-02-06 15:36:09.679633', 'ry', '2020-02-06 15:36:09.679633', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1024, '岗位删除', 104, 4, '', '', '1', 'F', '0', 'system:post:remove', '#', 'admin', '2020-02-06 15:36:09.699621', 'ry', '2020-02-06 15:36:09.699621', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1025, '岗位导出', 104, 5, '', '', '1', 'F', '0', 'system:post:export', '#', 'admin', '2020-02-06 15:36:09.7177', 'ry', '2020-02-06 15:36:09.7177', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1026, '字典查询', 105, 1, '#', '', '1', 'F', '0', 'system:dict:query', '#', 'admin', '2020-02-06 15:36:09.735802', 'ry', '2020-02-06 15:36:09.735802', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1027, '字典新增', 105, 2, '#', '', '1', 'F', '0', 'system:dict:add', '#', 'admin', '2020-02-06 15:36:09.760036', 'ry', '2020-02-06 15:36:09.760036', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1028, '字典修改', 105, 3, '#', '', '1', 'F', '0', 'system:dict:edit', '#', 'admin', '2020-02-06 15:36:09.778135', 'ry', '2020-02-06 15:36:09.778135', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1029, '字典删除', 105, 4, '#', '', '1', 'F', '0', 'system:dict:remove', '#', 'admin', '2020-02-06 15:36:09.79619', 'ry', '2020-02-06 15:36:09.79619', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1030, '字典导出', 105, 5, '#', '', '1', 'F', '0', 'system:dict:export', '#', 'admin', '2020-02-06 15:36:09.814224', 'ry', '2020-02-06 15:36:09.814224', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1031, '参数查询', 106, 1, '#', '', '1', 'F', '0', 'system:config:query', '#', 'admin', '2020-02-06 15:36:09.834222', 'ry', '2020-02-06 15:36:09.834222', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1032, '参数新增', 106, 2, '#', '', '1', 'F', '0', 'system:config:add', '#', 'admin', '2020-02-06 15:36:09.870151', 'ry', '2020-02-06 15:36:09.870151', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1033, '参数修改', 106, 3, '#', '', '1', 'F', '0', 'system:config:edit', '#', 'admin', '2020-02-06 15:36:09.888353', 'ry', '2020-02-06 15:36:09.888353', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1034, '参数删除', 106, 4, '#', '', '1', 'F', '0', 'system:config:remove', '#', 'admin', '2020-02-06 15:36:09.906705', 'ry', '2020-02-06 15:36:09.906705', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1035, '参数导出', 106, 5, '#', '', '1', 'F', '0', 'system:config:export', '#', 'admin', '2020-02-06 15:36:09.926765', 'ry', '2020-02-06 15:36:09.926765', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1036, '公告查询', 107, 1, '#', '', '1', 'F', '0', 'system:notice:query', '#', 'admin', '2020-02-06 15:36:09.944894', 'ry', '2020-02-06 15:36:09.944894', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1037, '公告新增', 107, 2, '#', '', '1', 'F', '0', 'system:notice:add', '#', 'admin', '2020-02-06 15:36:09.963004', 'ry', '2020-02-06 15:36:09.963004', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1038, '公告修改', 107, 3, '#', '', '1', 'F', '0', 'system:notice:edit', '#', 'admin', '2020-02-06 15:36:09.981384', 'ry', '2020-02-06 15:36:09.981384', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1039, '公告删除', 107, 4, '#', '', '1', 'F', '0', 'system:notice:remove', '#', 'admin', '2020-02-06 15:36:10.001451', 'ry', '2020-02-06 15:36:10.001451', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1040, '操作查询', 500, 1, '#', '', '1', 'F', '0', 'monitor:operlog:query', '#', 'admin', '2020-02-06 15:36:10.019609', 'ry', '2020-02-06 15:36:10.019609', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1041, '操作删除', 500, 2, '#', '', '1', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2020-02-06 15:36:10.037653', 'ry', '2020-02-06 15:36:10.037653', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1042, '日志导出', 500, 4, '#', '', '1', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2020-02-06 15:36:10.055711', 'ry', '2020-02-06 15:36:10.055711', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1043, '登录查询', 501, 1, '#', '', '1', 'F', '0', 'monitor:logininfor:query', '#', 'admin', '2020-02-06 15:36:10.074046', 'ry', '2020-02-06 15:36:10.074046', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1044, '登录删除', 501, 2, '#', '', '1', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2020-02-06 15:36:10.094078', 'ry', '2020-02-06 15:36:10.094078', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1045, '日志导出', 501, 3, '#', '', '1', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2020-02-06 15:36:10.118157', 'ry', '2020-02-06 15:36:10.118157', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1046, '在线查询', 109, 1, '#', '', '1', 'F', '0', 'monitor:online:query', '#', 'admin', '2020-02-06 15:36:10.140257', 'ry', '2020-02-06 15:36:10.140257', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1047, '批量强退', 109, 2, '#', '', '1', 'F', '0', 'monitor:online:batchLogout', '#', 'admin', '2020-02-06 15:36:10.168283', 'ry', '2020-02-06 15:36:10.168283', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1048, '单条强退', 109, 3, '#', '', '1', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2020-02-06 15:36:10.188432', 'ry', '2020-02-06 15:36:10.188432', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1049, '任务查询', 110, 1, '#', '', '1', 'F', '0', 'monitor:job:query', '#', 'admin', '2020-02-06 15:36:10.210539', 'ry', '2020-02-06 15:36:10.210539', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1050, '任务新增', 110, 2, '#', '', '1', 'F', '0', 'monitor:job:add', '#', 'admin', '2020-02-06 15:36:10.230602', 'ry', '2020-02-06 15:36:10.230602', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1051, '任务修改', 110, 3, '#', '', '1', 'F', '0', 'monitor:job:edit', '#', 'admin', '2020-02-06 15:36:10.250741', 'ry', '2020-02-06 15:36:10.250741', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1052, '任务删除', 110, 4, '#', '', '1', 'F', '0', 'monitor:job:remove', '#', 'admin', '2020-02-06 15:36:10.270823', 'ry', '2020-02-06 15:36:10.270823', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1053, '状态修改', 110, 5, '#', '', '1', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2020-02-06 15:36:10.306994', 'ry', '2020-02-06 15:36:10.306994', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1054, '任务导出', 110, 7, '#', '', '1', 'F', '0', 'monitor:job:export', '#', 'admin', '2020-02-06 15:36:10.325051', 'ry', '2020-02-06 15:36:10.325051', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1055, '生成查询', 114, 1, '#', '', '1', 'F', '0', 'tool:gen:query', '#', 'admin', '2020-02-06 15:36:10.345756', 'ry', '2020-02-06 15:36:10.345756', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1056, '生成修改', 114, 2, '#', '', '1', 'F', '0', 'tool:gen:edit', '#', 'admin', '2020-02-06 15:36:10.377695', 'ry', '2020-02-06 15:36:10.377695', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1057, '生成删除', 114, 3, '#', '', '1', 'F', '0', 'tool:gen:remove', '#', 'admin', '2020-02-06 15:36:10.397775', 'ry', '2020-02-06 15:36:10.397775', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1058, '导入代码', 114, 2, '#', '', '1', 'F', '0', 'tool:gen:import', '#', 'admin', '2020-02-06 15:36:10.419692', 'ry', '2020-02-06 15:36:10.419692', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1059, '预览代码', 114, 4, '#', '', '1', 'F', '0', 'tool:gen:preview', '#', 'admin', '2020-02-06 15:36:10.437801', 'ry', '2020-02-06 15:36:10.437801', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (1060, '生成代码', 114, 5, '#', '', '1', 'F', '0', 'tool:gen:code', '#', 'admin', '2020-02-06 15:36:10.454217', 'ry', '2020-02-06 15:36:10.454217', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2022, '指标', 24, 13, 'energyIndex', 'basicsetting/energyIndex/index', '1', 'C', '0', 'basicsetting:modelNode:list', 'tree-table', 'admin', '2018-03-01 00:00:00', 'admin', '2024-10-12 15:28:20.831076', '模型节点菜单', NULL, NULL, '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2023, '模型节点查询', 2070, 1, '#', '', '1', 'F', '0', 'basicsetting:modelNode:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2024, '模型节点新增', 2070, 2, '#', '', '1', 'F', '0', 'basicsetting:modelNode:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2025, '模型节点修改', 2070, 3, '#', '', '1', 'F', '0', 'basicsetting:modelNode:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2026, '模型节点删除', 2070, 4, '#', '', '1', 'F', '0', 'basicsetting:modelNode:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2027, '模型节点导出', 2070, 5, '#', '', '1', 'F', '0', 'basicsetting:modelNode:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2063, '指标信息查询', 2070, 6, '#', '', '1', 'F', '0', 'energyindex:energyindex:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2064, '指标信息新增', 2070, 7, '#', '', '1', 'F', '0', 'energyindex:energyindex:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2065, '指标信息修改', 2070, 8, '#', '', '1', 'F', '0', 'energyindex:energyindex:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2066, '指标信息删除', 2070, 9, '#', '', '1', 'F', '0', 'energyindex:energyindex:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2067, '指标信息导出', 2070, 10, '#', '', '1', 'F', '0', 'energyindex:energyindex:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2070, '数据模型管理', 24, 14, 'modelManage', 'basicsetting/modelNode/index', '1', 'C', '0', '', 'component', 'admin', '2020-02-15 15:33:05.284411', 'admin', '2024-10-12 15:28:32.580322', NULL, NULL, NULL, '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2074, '模型信息查询', 2070, 1, '#', '', '1', 'F', '0', 'basicsetting:model:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2075, '模型信息新增', 2070, 2, '#', '', '1', 'F', '0', 'basicsetting:model:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2076, '模型信息修改', 2070, 3, '#', '', '1', 'F', '0', 'basicsetting:model:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2077, '模型信息删除', 2070, 4, '#', '', '1', 'F', '0', 'basicsetting:model:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2078, '模型信息导出', 2070, 5, '#', '', '1', 'F', '0', 'basicsetting:model:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2080, '产品管理', 24, 15, 'product', 'enerInfoManage/product/index', '1', 'C', '0', 'enerInfoManage:product:index', 'people', 'admin', '2020-02-19 14:03:35.353256', 'admin', '2025-04-10 16:31:09.73768', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2125, '计算公式管理1', 24, 16, 'function', 'basicsetting/function/index', '1', 'C', '0', 'basicsetting:function:list', 'druid', 'admin', '2018-03-01 00:00:00', 'admin', '2025-02-15 13:52:04.120706', '计算函数菜单', NULL, NULL, '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2126, '计算函数查询', 2125, 1, '#', '', '1', 'F', '0', 'basicsetting:function:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2127, '计算函数新增', 2125, 2, '#', '', '1', 'F', '0', 'basicsetting:function:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2128, '计算函数修改', 2125, 3, '#', '', '1', 'F', '0', 'basicsetting:function:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2129, '计算函数删除', 2125, 4, '#', '', '1', 'F', '0', 'basicsetting:function:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2130, '计算函数导出', 2125, 5, '#', '', '1', 'F', '0', 'basicsetting:function:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '', NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2184, '采集指标库', 24, 1, 'collectindicator', 'modelconfiguration/collectindicator/collectIndicator', '1', 'C', '0', 'basicsetting:modelNode:list', 'chart', 'admin', '2024-09-23 10:14:19.420385', 'admin', '2024-10-17 16:27:16.556714', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2187, '尖峰平谷分析', 2692, 1150, 'peakvalley', NULL, '1', 'M', '0', '', 'chart', 'admin', '2024-09-23 16:21:27.544122', 'admin', '2025-04-13 20:38:24.758834', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2188, '峰平谷分时统计', 2187, 1002, 'timesharing', 'peakvalley/timeSharing/timeSharing', '1', 'C', '0', '', 'chart', 'admin', '2024-09-23 16:22:59.639755', 'admin', '2025-02-10 18:07:25.820415', NULL, NULL, '{"modelCode":"JFPGMX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2189, '数据权限设置', 1, 15, 'dataAuth', 'basicsetting/dataAuthSetting/index', '1', 'C', '0', '', 'validCode', 'admin', '2020-04-19 15:01:32.731398', 'admin', '2025-03-25 18:13:55.295386', NULL, NULL, NULL, '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2190, '峰平谷时段统计', 2187, 1, 'period', 'peakvalley/period/period', '1', 'C', '0', 'basicsetting:modelNode:query', 'chart', 'admin', '2024-09-23 16:59:58.09546', 'admin', '2025-02-10 18:07:21.987581', NULL, '{''modelCode'':''1111''}', '{"modelCode":"JFPGMX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2191, '实时监测分析', 2691, 1100, 'realtimemonitor', NULL, '1', 'M', '0', '', 'example', 'admin', '2024-09-26 10:08:51.932063', 'admin', '2025-04-13 20:32:11.799077', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2192, '实时监测', 2191, 1, 'realtimemonitor', 'realtimemonitor/realtimemonitor/realtimemonitor', '1', 'C', '0', 'enerInfoManage:energy:list', 'chart', 'admin', '2024-09-26 10:13:26.308219', 'admin', '2025-02-07 11:42:10.821061', NULL, NULL, '{"modelCode":"YSCJMX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2193, '计量表拓扑图', 2191, 2, 'metertopologychart', 'realtimemonitor/metertopologychart/metertopologychart', '1', 'C', '1', '', 'chart', 'admin', '2024-09-26 10:16:32.329737', 'admin', '2024-11-05 16:57:31.745814', NULL, NULL, NULL, '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2194, '报警中心管理', 2691, 1200, 'alarmmanage', NULL, '1', 'M', '0', '', 'bug', 'admin', '2024-09-26 14:14:51.194544', 'admin', '2025-04-13 20:33:27.665415', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2198, '能耗报警', 2194, 2, 'energyconsumption', 'alarmmanage/energyconsumption/energyConsumption', '1', 'C', '1', '', '404', 'admin', '2024-09-26 14:17:21.051214', 'admin', '2025-02-12 17:06:37.174604', NULL, NULL, '{"modelCode":"BJGL"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2200, '报警分析', 2194, 1, 'measuremen', 'alarmmanage/measuremen/measuremen', '1', 'C', '0', '', 'chart', 'admin', '2024-09-26 14:18:46.161436', 'admin', '2025-02-12 17:06:31.546699', NULL, NULL, '{"modelCode":"BJGL"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2202, '能耗统计分析', 2692, 1120, 'energyanalysis', NULL, '1', 'M', '0', '', 'chart', 'admin', '2024-09-26 14:22:27.257479', 'admin', '2025-04-13 20:37:25.659139', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2255, '指标库管理', 24, 11, 'energyIndex', 'basicsetting/energyIndex/index', '1', 'C', '0', 'basicsetting:modelNode:list', 'build', 'admin', '2021-01-14 22:03:59.216067', 'admin', '2024-11-06 15:15:35.951169', NULL, NULL, '{"modelCode":"JCZBK_CODE"}', '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2274, '报表指标关联配置', 24, 18, 'pbdfrzbgl', 'costaccounting/frreport/reportiframe', '1', 'C', '0', '', 'component', 'admin', '2022-03-23 17:08:18.652702', 'admin', '2024-10-17 18:12:58.65656', NULL, '{"modelCode":"http://150.139.193.86:4040/webroot/decision/view/report?viewlet=PBD%252FPDBBBZBGL.cpt&amp;op=write"}', NULL, '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2532, '区域能耗分析', 2202, 1, 'region', 'energyanalysis/region/region', '1', 'C', '0', '', 'chart', 'admin', '2024-09-26 15:04:16.345632', 'admin', '2024-11-06 16:28:39.826174', NULL, NULL, '{"modelCode":"COMPREHENSIVE_CODE"}', '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2533, '厂区能耗分析', 2202, 5, 'department', 'energyanalysis/department/department', '1', 'C', '0', 'basicsetting:modelNode:list', 'chart', 'admin', '2024-09-26 16:06:45.680013', 'admin', '2025-02-10 18:27:55.998644', NULL, NULL, '{"modelCode":"ZHNHFX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2534, '设备能耗分析', 2202, 4, 'equipment', 'energyanalysis/equipment/equipment', '1', 'C', '0', '', 'chart', 'admin', '2024-09-26 16:08:47.268272', 'admin', '2025-02-13 18:36:03.559448', NULL, NULL, '{"modelCode":"ZHNHFX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2535, '综合能耗分析', 2202, 6, 'comprehensive', 'energyanalysis/comprehensive/comprehensive', '1', 'C', '0', '', 'chart', 'admin', '2024-09-26 16:09:40.860504', 'admin', '2025-02-10 18:28:00.962136', NULL, NULL, '{"modelCode":"ZHNHFX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2539, '辅助录入管理', 2695, 1300, 'auxiliaryentry', NULL, '1', 'M', '0', '', 'edit', 'admin', '2024-09-28 10:38:31.44203', 'admin', '2025-04-13 20:44:14.246106', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2540, '产品产量录入', 2539, 1, 'productoutput', 'auxiliaryentry/productoutput/productOutput', '1', 'C', '0', 'system:prodoutput:list', 'edit', 'admin', '2024-09-28 10:39:20.278597', 'admin', '2025-02-12 10:15:30.706893', NULL, NULL, '{"modelCode":"CPDHFX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2541, '能源仪表录入', 2539, 2, 'energymeter', 'auxiliaryentry/energymeter/energyMeter', '1', 'C', '0', '', 'edit', 'admin', '2024-09-28 10:42:01.020513', 'admin', '2024-12-12 20:00:46.361616', NULL, NULL, '{"modelCode":"COMPREHENSIVE_CODE"}', '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2542, '能源指标录入', 2539, 3, 'energyIndexInput', 'auxiliaryentry/energyindexinput/energyIndexInput', '1', 'C', '0', '', 'edit', 'admin', '2024-09-28 10:42:46.684844', 'admin', '2024-12-12 20:00:52.694999', NULL, NULL, '{"modelCode":"COMPREHENSIVE_CODE"}', '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2544, '网关台账', 2549, 1, 'gatewayledger', 'businessconfiguration/gatewayledger/gatewayLedger', '1', 'C', '0', '', 'list', 'admin', '2024-09-28 10:44:07.65808', 'admin', '2025-02-07 14:58:47.581692', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2545, '网关状态监测', 2191, 10, 'gatewaystatus', 'businessconfiguration/gatewaystatus/gatewayStatus', '1', 'C', '0', '', 'list', 'admin', '2024-09-28 10:44:56.340038', 'admin', '2025-02-10 17:09:56.041453', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2546, '能源数据采集', 2549, 3, 'datacollection', 'businessconfiguration/datacollection/dataCollection', '1', 'C', '1', '', 'list', 'admin', '2024-09-28 10:49:54.500932', 'admin', '2025-02-14 09:16:24.076118', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2547, '计量仪表状态', 2191, 100, 'statusmonitor', 'businessconfiguration/statusmonitor/statusMonitor', '1', 'C', '1', '', 'list', 'admin', '2024-09-28 10:50:43.67392', 'admin', '2025-02-10 17:59:38.133432', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2548, ' 系统名称设置', 1, 20, 'name', 'system/name/name', '1', 'C', '0', '', 'system', 'admin', '2024-09-28 10:54:55.066261', 'admin', '2024-11-07 19:12:03.599817', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2549, '设备档案管理', 2695, 1800, 'measuringinstruments', NULL, '1', 'M', '0', '', 'list', 'admin', '2024-09-28 11:01:20.260258', 'admin', '2025-04-13 20:44:42.352935', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2550, '计量器具档案维护', 2549, 1, 'maintain', 'measuringinstruments/maintain/maintain', '1', 'C', '0', '', 'documentation', 'admin', '2024-09-28 11:02:24.464511', 'admin', '2024-11-07 19:15:01.69838', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2551, '产品单耗分析', 2559, 1003, 'consumptionanalysis', 'consumptionanalysis/consumptionAnalysis', '1', 'C', '0', 'basicsetting:modelNode:list', 'chart', 'admin', '2024-09-29 16:27:39.396015', 'admin', '2025-02-12 09:48:57.953019', NULL, NULL, '{"modelCode":"CPDHFX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2555, '统计指标库', 24, 2, 'indexwarehouse', 'modelconfiguration/indexwarehouse/indexWarehouse', '1', 'C', '0', '', 'documentation', 'admin', '2024-10-08 14:43:40.925061', 'admin', '2025-02-06 11:33:37.156272', NULL, NULL, '', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2556, '业务模型库', 24, 3, 'businessmodel', 'modelconfiguration/businessmodel/businessModel', '1', 'C', '0', '', 'build', 'admin', '2024-10-10 10:06:07.731312', 'admin', '2024-10-17 16:28:21.271014', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2557, '计算公式管理', 24, 9, 'calculationformula', 'modelconfiguration/calculationformula/calculationFormula', '1', 'C', '0', '', 'build', 'admin', '2024-10-10 11:16:08.78276', 'admin', '2025-02-15 13:53:46.748971', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2558, '尖峰平谷配置', 24, 7, 'setpeakvalley', 'modelconfiguration/setpeakvalley/setPeakValley', '1', 'C', '0', '', 'build', 'admin', '2024-10-11 17:55:39.800051', 'admin', '2024-10-17 17:00:44.253614', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2559, '产品单耗分析', 2694, 1190, 'consumptionanalysis', NULL, '1', 'M', '0', '', 'table', 'admin', '2024-10-12 15:49:32.932792', 'admin', '2025-04-14 14:48:58.041852', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2560, '能源品种管理', 24, 5, 'energyvarieties', 'modelconfiguration/energyvarieties/energyVarieties', '1', 'C', '0', 'enerInfoManage:enerclass:list', 'documentation', 'admin', '2024-10-15 16:13:16.46931', 'admin', '2025-02-15 13:51:55.537086', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2561, '系统选用能源品种', 24, 6, 'energytype', 'modelconfiguration/energytype/energyType', '1', 'C', '0', '', 'star', 'admin', '2024-10-15 16:50:31.679352', 'admin', '2025-02-15 13:52:13.743568', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2562, '报警限值类型', 2194, 5, 'alarmmaintenance', 'businessconfiguration/alarmmaintenance/alarmMaintenance', '1', 'C', '0', 'basicsetting:limitType:list', 'list', 'admin', '2024-10-15 17:20:02.990412', 'admin', '2025-02-13 10:33:40.08607', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2563, '碳排数据分析', 2694, 1180, 'carbonemission', NULL, '1', 'M', '0', '', 'table', 'admin', '2024-10-16 13:56:31.635122', 'admin', '2025-04-13 20:42:33.267828', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2564, '碳排放量核算', 2563, 1, 'carbonemission', 'carbonemission/carbonEmission', '1', 'C', '0', '', 'chart', 'admin', '2024-10-16 13:57:12.783596', 'admin', '2024-11-07 19:14:24.757121', NULL, NULL, '{"modelCode":"COMPREHENSIVE_CODE"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2565, '能源深度分析', 2694, 1130, 'deepanalysis', NULL, '1', 'M', '0', '', 'chart', 'admin', '2024-10-16 13:57:37.733733', 'admin', '2025-04-13 20:42:00.454826', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2566, '能源损失分析', 2565, 1, 'deepanalysis', 'deepanalysis/deepAnalysis', '1', 'C', '0', '', 'chart', 'admin', '2024-10-16 13:58:08.84394', 'admin', '2025-02-11 16:50:45.179816', NULL, NULL, '{"modelCode":"EnergyLossModel"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2567, '节能项目管理', 2695, 1700, 'policy', NULL, '1', 'M', '0', '', 'list', 'admin', '2024-10-17 11:01:15.967437', 'admin', '2025-04-13 20:44:30.873126', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2568, '节能政策法规', 2567, 1, 'policyrule', 'energyconservation/policyrule/policyRule', '1', 'C', '0', '', 'documentation', 'admin', '2024-10-17 11:03:48.797979', 'admin', '2025-01-22 17:15:33.406517', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2569, '节能项目管理', 2567, 2, 'projectmanage', 'energyconservation/projectmanage/projectmanage/projectManage', '1', 'C', '0', 'energySavingProject:Project:list', 'list', 'admin', '2024-10-17 11:04:43.709856', 'admin', '2025-02-13 17:28:57.06494', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2571, '预报警管理', 2194, 6, 'prealarmmanage', 'businessconfiguration/prealarmmanage/prealarmmanage', '1', 'C', '0', '', 'list', 'admin', '2024-10-22 14:46:25.692609', 'admin', '2025-02-12 17:06:51.722464', NULL, NULL, '{"modelCode":"BJGL"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2572, '能耗指标考核', 2202, 2, 'indicatorassessment', 'energyanalysis/indicatorassessment/indicatorassessment', '1', 'C', '1', '', 'chart', 'admin', '2024-10-24 14:46:00.126301', 'admin', '2025-02-10 18:26:12.128632', NULL, NULL, '{"modelCode":"YSCJMX"}', '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2582, '报警记录', 2194, 2, 'alarmRecord', 'alarmmanage/alarmrecord/alarmRecord', '1', 'C', '0', '', 'list', 'admin', '2024-10-28 13:55:29.892821', 'admin', '2025-02-12 17:06:44.034521', NULL, NULL, '{"modelCode":"BJGL"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2588, '单价策略', 2592, 1, 'unitpricestrategy', 'costmanage/unitpricestrategy/unitpricestrategy', '1', 'C', '0', 'costmanagement:tactics:list', 'list', 'admin', '2024-11-06 17:28:57.118822', 'admin', '2025-01-18 11:18:36.315025', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2589, '单价关联', 2592, 2, 'unitpricecorrelation', 'costmanage/unitpricecorrelation/unitpricecorrelation', '1', 'C', '0', 'costmanagement:relevancy:list', 'list', 'admin', '2024-11-06 17:29:36.026872', 'admin', '2025-02-05 18:22:06.689406', NULL, NULL, '{"modelCode":"YSCJMX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2590, '电费偏差分析', 2644, 3, 'deviation', 'costmanage/deviation/deviation', '1', 'C', '0', '', 'list', 'admin', '2024-11-06 17:30:19.200266', 'admin', '2025-02-10 22:23:42.562902', NULL, NULL, '{"modelCode":"YSCJMX"}', '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2591, '用电录入', 2539, 5, 'electricityinput', 'auxiliaryentry/electricityinput/electricityinput', '1', 'C', '0', 'system:Input:list', 'edit', 'admin', '2024-11-07 20:43:14.997449', 'admin', '2025-01-18 12:01:46.81356', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2592, '能源单价策略', 2695, 1931, 'costmanage', NULL, '1', 'M', '1', '', 'system', 'admin', '2024-11-12 14:18:22.663081', 'admin', '2025-04-13 20:45:24.22548', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2594, '能源效率对标分析', 2675, 2, 'benchmarkinganalysis', 'energyefficiency/benchmarkinganalysis/benchmarkinganalysis', '1', 'C', '1', '', 'list', 'admin', '2024-11-15 10:25:04.56843', 'admin', '2025-02-13 23:04:11.617722', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2595, '查询', 2192, 1, NULL, NULL, '1', 'F', '0', 'realtimemonitor:realtimemonitor:list', '0', 'admin', '2024-11-15 14:33:44.982607', 'admin', '2025-01-18 19:02:31.359318', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2596, '重置', 2192, 2, NULL, NULL, '1', 'F', '0', 'realtimemonitor:realtimemonitor:reset', '0', 'admin', '2024-11-15 14:35:50.087813', NULL, NULL, NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2597, '标杆值管理', 2675, 1, 'benchmarkmanage', 'energyefficiency/benchmarkmanage/benchmarkmanage', '1', 'C', '1', 'system:benchmarkManage:list', 'list', 'admin', '2024-11-15 16:57:07.400538', 'admin', '2025-02-13 23:03:57.384638', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2598, '配电室管理', 2549, 0, 'distributionroom.vue', 'measuringinstruments/distributionroom/distributionroom', '1', 'C', '0', '', 'build', 'admin', '2024-11-25 13:55:44.097401', 'admin', '2024-11-25 16:20:50.140762', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2599, '电力平衡分析', 2565, 2, 'powerbalance', 'powerbalance/powerbalance', '1', 'C', '1', '', 'chart', 'admin', '2024-11-25 15:18:57.637159', 'admin', '2025-02-10 23:09:25.050439', NULL, NULL, '{"modelCode":"YSCJMX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2638, '查询', 2588, 1, NULL, NULL, '1', 'F', '0', 'costmanagement:tactics:list', '0', 'admin', '2025-01-10 12:29:20.147131', 'admin', '2025-01-16 15:10:25.82247', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2639, '查询', 2599, 1, NULL, NULL, '1', 'F', '0', 'basicsetting:modelNode:list', '0', 'admin', '2025-01-10 12:35:02.26114', 'admin', '2025-01-10 13:53:58.401691', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2641, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '1', 'C', '0', 'monitor:cache:list', 'redis', 'admin', '2025-01-15 10:54:28.534517', NULL, NULL, NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2642, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '1', 'C', '0', 'monitor:cache:list', 'redis-list', 'admin', '2025-01-15 10:56:00.188078', NULL, NULL, NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2644, '电能质量分析', 2691, 1160, 'powerquality', NULL, '1', 'M', '0', '', 'table', 'admin', '2025-01-18 15:17:48.093977', 'admin', '2025-04-14 13:27:34.259907', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2645, '负荷分析', 2644, 1, 'load', 'powerquality/load/index', '1', 'C', '0', '', 'druid', 'admin', '2025-01-18 15:22:22.404391', 'admin', '2025-01-18 15:33:17.891748', NULL, NULL, '{"modelCode":"YSCJMX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2646, '功率因数分析', 2644, 2, 'power', 'powerquality/power/index', '1', 'C', '0', '', 'color', 'admin', '2025-01-18 15:25:16.897662', 'admin', '2025-01-18 15:33:23.07994', NULL, NULL, '{"modelCode":"YSCJMX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2647, '三相不平衡分析', 2644, 3, 'threephase', 'powerquality/threephase/index', '1', 'C', '0', '', 'cascader', 'admin', '2025-01-18 15:26:25.277944', 'admin', '2025-01-18 15:33:28.71442', NULL, NULL, '{"modelCode":"YSCJMX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2651, '新增', 2588, 1, NULL, NULL, '1', 'F', '0', 'costmanagement:tactics:add', '0', 'admin', '2025-01-18 17:04:40.20329', NULL, NULL, NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2652, '修改', 2588, 1, NULL, NULL, '1', 'F', '0', 'costmanagement:tactics:edit', '0', 'admin', '2025-01-18 17:04:55.54621', NULL, NULL, NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2653, '删除', 2588, 1, NULL, NULL, '1', 'F', '0', 'costmanagement:tactics:remove', '0', 'admin', '2025-01-18 17:05:27.560014', NULL, NULL, NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2657, '知识库', 2567, 3, 'knowledgebase', 'policy/knowledgebase/knowledgeBase', '1', 'C', '0', NULL, 'education', 'admin', '2025-01-18 18:35:22.135334', NULL, NULL, NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2658, '历史数据分析', 2691, 1110, 'statisticalData', NULL, '1', 'M', '0', '', 'table', 'admin', '2025-02-07 14:12:00.856688', 'admin', '2025-04-13 20:32:48.132764', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2659, '综合指标分析（日）', 2662, 1, 'dailyComprehensive', 'comprehensive/dailyComprehensive/index', '1', 'C', '0', '', 'chart', 'admin', '2025-02-07 14:13:30.780793', 'admin', '2025-02-10 17:33:17.968157', NULL, NULL, '{"modelCode":"ZHNHFX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2660, '工艺流程图监测', 2191, 4, 'configure-chart-gy', 'svg/equipmentfile/chartView', '1', 'C', '0', '', 'monitor', 'admin', '2025-02-07 15:31:24.253095', 'admin', '2025-02-10 17:05:19.333067', NULL, NULL, '{"modelCode":"PROCESS_FLOW"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2661, '组态图配置', 24, 8, 'equipmentfile/index', 'svg/equipmentfile/index', '1', 'C', '0', '', 'people', 'admin', '2025-02-07 15:56:16.639935', 'admin', '2025-02-15 13:52:52.401413', NULL, NULL, '', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2662, '综合指标分析', 2692, 1115, 'comprehensiveData', NULL, '1', 'M', '0', '', 'dict', 'admin', '2025-02-08 12:29:48.815218', 'admin', '2025-04-13 20:35:26.240378', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2663, '历史数据查询', 2658, 1, 'historyDataTrend', 'dataMonitoring/historyDataTrend/index', '1', 'C', '0', 'dataMonitoring:historyDataTrend:index', 'checkbox', 'admin', '2025-02-08 12:32:07.159876', 'admin', '2025-02-13 11:47:30.297699', NULL, NULL, '{"modelCode":"YSCJMX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2664, '综合指标分析（月）', 2662, 2, 'monthlyComprehensive', 'comprehensive/monthlyComprehensive/index', '1', 'C', '0', '', 'chart', 'admin', '2025-02-08 12:34:40.472895', 'admin', '2025-02-10 17:33:24.346338', NULL, NULL, '{"modelCode":"ZHNHFX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2665, '综合指标分析（年）', 2662, 3, 'yearComprehensive', 'comprehensive/yearComprehensive/index', '1', 'C', '0', '', 'chart', 'admin', '2025-02-08 12:35:43.889575', 'admin', '2025-02-10 17:33:29.929019', NULL, NULL, '{"modelCode":"ZHNHFX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2666, '能源成本分析', 2694, 1125, 'energyStatistics', NULL, '1', 'M', '0', '', 'chart', 'admin', '2025-02-08 12:47:34.949211', 'admin', '2025-04-13 20:41:47.356648', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2667, '成本趋势分析', 2666, 1, 'costTrend', 'costAnalysis/cost-trend-analysis', '1', 'C', '0', '', 'dict', 'admin', '2025-02-08 12:48:34.969566', 'admin', '2025-02-13 14:12:33.507843', NULL, NULL, '{"modelCode":"NYCBMX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2668, '电力组态图监测', 2191, 2, 'configure-chart-dl', 'svg/equipmentfile/chartView', '1', 'C', '0', '', 'monitor', 'admin', '2025-02-10 17:01:03.264328', 'admin', '2025-02-10 17:04:59.856417', NULL, NULL, '{"modelCode":"ElectricityModel"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2669, '用水组态图监测', 2191, 3, 'configure-chart-water', 'svg/equipmentfile/chartView', '1', 'C', '1', '', 'monitor', 'admin', '2025-02-10 17:02:47.893718', 'admin', '2025-02-10 17:17:59.303881', NULL, NULL, '{"modelCode":"WaterSVGModel"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2670, '能耗同比分析', 2675, 2, 'pariPassu', 'poweranalysis/pariPassu/index', '1', 'C', '0', '', 'chart', 'admin', '2025-02-10 18:13:22.148151', 'admin', '2025-02-14 10:34:28.270115', NULL, NULL, '{ "modelCode":"Energy_YOY"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2671, '能耗环比分析', 2675, 1, 'perPassu', 'poweranalysis/perPassu/index', '1', 'C', '0', '', 'chart', 'admin', '2025-02-10 18:16:44.601742', 'admin', '2025-02-15 09:30:06.562936', NULL, NULL, '{ "modelCode":"Energy_YOY"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2672, '能耗对比分析', 2675, 3, 'energy_comparison', 'power-statistics-analyse/energy_comparison/index', '1', 'C', '1', '', 'chart', 'admin', '2025-02-10 18:25:16.843916', 'admin', '2025-02-13 17:27:11.191593', NULL, NULL, '{"modelCode":"Energy_Comparison"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2674, '分时能源消耗', 2666, 2, 'energyTrendAnalysis', 'costAnalysis/energy-trend-analysis', '1', 'C', '0', '', 'documentation', 'admin', '2025-02-13 14:07:44.812005', 'admin', '2025-03-05 16:07:25.944049', NULL, NULL, NULL, '1', '0');
INSERT INTO "public"."sys_menu" VALUES (2675, '能耗对比分析', 2692, 1123, 'statisticsAnalysis', NULL, '1', 'M', '0', '', 'chart', 'admin', '2025-02-13 17:26:26.087162', 'admin', '2025-04-13 20:38:57.474817', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2676, '重点设备分析', 2692, 1121, 'keyEquipment', NULL, '1', 'M', '0', '', 'chart', 'admin', '2025-03-18 14:35:41.789198', 'admin', '2025-04-13 20:37:40.814196', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2677, '重点设备分析（日）', 2676, 1, 'dailyKey', 'keyEquipment/daily/index', '1', 'C', '0', '', 'chart', 'admin', '2025-03-18 14:37:01.621949', 'admin', '2025-03-21 15:51:16.210394', NULL, NULL, '{"modelCode":"ZDSBNH"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2678, '工序能耗分析', 2692, 1122, 'processEnergy', NULL, '1', 'M', '0', '', 'chart', 'admin', '2025-03-18 14:45:12.965107', 'admin', '2025-04-13 20:37:51.192951', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2679, '工序能耗分析（日）', 2678, 1, 'dailyProcess', 'processEnergy/daily/index', '1', 'C', '0', '', 'chart', 'admin', '2025-03-18 14:50:27.831282', 'admin', '2025-03-18 16:12:09.150727', NULL, NULL, '{"modelCode":"GXNH"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2680, '工序能耗分析（月）', 2678, 2, 'monthlyProcess', 'processEnergy/monthly/index', '1', 'C', '0', '', 'chart', 'admin', '2025-03-18 14:51:43.383875', 'admin', '2025-03-18 16:12:13.194606', NULL, NULL, '{"modelCode":"GXNH"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2681, '重点设备分析（月）', 2676, 2, 'monthlyKey', 'keyEquipment/monthly/index', '1', 'C', '0', '', 'chart', 'admin', '2025-03-18 14:51:50.601644', 'admin', '2025-03-18 16:16:34.124677', NULL, NULL, '{"modelCode":"ZDSBNH"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2682, '工序能耗分析（年）', 2678, 3, 'yearProcess', 'processEnergy/year/index', '1', 'C', '0', '', 'chart', 'admin', '2025-03-18 14:52:23.645396', 'admin', '2025-03-18 16:12:17.35876', NULL, NULL, '{"modelCode":"GXNH"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2683, '重点设备分析（年）', 2676, 3, 'yearKey', 'keyEquipment/year/index', '1', 'C', '0', '', 'chart', 'admin', '2025-03-18 14:53:31.940788', 'admin', '2025-03-18 16:16:38.276984', NULL, NULL, '{"modelCode":"ZDSBNH"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2688, '建筑能耗分析', 2692, 1116, 'buildingConsumption', NULL, '1', 'M', '0', '', 'tree-table', 'admin', '2025-03-24 11:42:05.769913', 'admin', '2025-04-13 20:37:06.047321', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2689, '分项能耗分析', 2688, 1, 'item-build', 'buildingConsumption/item-build/index', '1', 'C', '0', '', 'slider', 'admin', '2025-03-24 11:45:01.339698', 'admin', '2025-03-26 11:49:29.114797', NULL, NULL, '{"modelCode":"FXYN_FX_CDOE"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2690, '支路能耗分析', 2688, 2, 'branch', 'buildingConsumption/branch-build/index', '1', 'C', '0', '', 'switch', 'admin', '2025-03-24 11:45:32.860624', 'admin', '2025-03-26 15:39:46.598704', NULL, NULL, '{"modelCode":"ZLYNFX"}', '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2691, '能耗监控', 0, 1, 'realtime', NULL, '1', 'M', '0', NULL, 'dashboard', 'admin', '2025-04-13 20:31:48.011671', NULL, NULL, NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2692, '能效分析', 0, 2, 'analysis', NULL, '1', 'M', '0', '', 'dashboard', 'admin', '2025-04-13 20:34:49.05552', 'admin', '2025-04-13 20:42:18.817925', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2694, '能碳诊断', 0, 3, 'carbon', NULL, '1', 'M', '0', '', 'dashboard', 'admin', '2025-04-13 20:39:27.329658', 'admin', '2025-04-13 20:42:11.214222', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2695, '系统配置', 0, 7, 'system', NULL, '1', 'M', '0', '', 'edit', 'admin', '2025-04-13 20:43:52.427773', 'admin', '2025-04-29 18:43:00.397599', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2696, '光伏运营管理', 0, 5, 'https://demo-pv.zhitancloud.com/', NULL, '0', 'C', '0', '', 'button', 'admin', '2025-04-13 21:01:46.170702', 'admin', '2025-05-08 15:50:27.617231', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2697, '充电桩运营平台', 0, 6, 'https://demo-charge.zhitancloud.com/', NULL, '0', 'C', '0', '', 'button', 'admin', '2025-04-13 21:04:05.122883', 'admin', '2025-05-08 15:50:31.659621', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2698, '首页看板', 0, 0, 'index', NULL, '1', 'M', '0', '', 'dashboard', 'admin', '2025-04-13 21:07:41.389789', 'admin', '2025-04-13 21:09:09.473037', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2699, '首页', 2698, 1, 'index', 'index', '1', 'C', '0', '', 'dashboard', 'admin', '2025-04-13 21:08:16.245756', 'admin', '2025-04-14 11:52:03.011323', NULL, NULL, NULL, '0', '0');
INSERT INTO "public"."sys_menu" VALUES (2701, '碳链中心', 0, 4, 'https://carboncity-stg.carbono2.com/zhitan/#/login', NULL, '0', 'M', '0', '', '0', 'admin', '2025-04-29 18:42:30.58787', 'admin', '2025-05-08 15:50:37.012319', NULL, NULL, NULL, '0', '0');

-- ----------------------------
-- Table structure for sys_name_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_name_config";
CREATE TABLE "public"."sys_name_config" (
  "system_name" varchar(255) COLLATE "pg_catalog"."default",
  "left_logo" varchar(255) COLLATE "pg_catalog"."default",
  "copy_right" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "home_logo" varchar(255) COLLATE "pg_catalog"."default",
  "admin_wechat_qr_code" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_name_config"."system_name" IS '系统名称';
COMMENT ON COLUMN "public"."sys_name_config"."left_logo" IS '左上角logo';
COMMENT ON COLUMN "public"."sys_name_config"."copy_right" IS '底部版权';
COMMENT ON COLUMN "public"."sys_name_config"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_name_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_name_config"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_name_config"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_name_config"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_name_config"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_name_config"."home_logo" IS '首页logo';
COMMENT ON COLUMN "public"."sys_name_config"."admin_wechat_qr_code" IS '管理员微信二维码';
COMMENT ON TABLE "public"."sys_name_config" IS '系统名称配置';

-- ----------------------------
-- Records of sys_name_config
-- ----------------------------
INSERT INTO "public"."sys_name_config" VALUES ('综合能碳管理平台', '/prod-api/profile/upload/2025/05/16/logo英文-无底色_20250516003507A024.png', 'Copyright © 2017-2025 zhitan-ems All Rights Reserved.', '', '2024-11-05 18:43:33', 'admin', '2024-11-05 18:45:42', NULL, '1853749989367087106', '/prod-api/profile/upload/2025/05/16/logo英文-无底色_20250516003500A023.png', '/prod-api/profile/upload/2025/05/16/20250427160646_20250516003359A022.png');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_notice";
CREATE TABLE "public"."sys_notice" (
  "notice_id" int4 NOT NULL DEFAULT nextval('notice_id_seq'::regclass),
  "notice_title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_type" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_content" varchar(2000) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_notice"."notice_id" IS '公告ID';
COMMENT ON COLUMN "public"."sys_notice"."notice_title" IS '公告标题';
COMMENT ON COLUMN "public"."sys_notice"."notice_type" IS '公告类型（1通知 2公告）';
COMMENT ON COLUMN "public"."sys_notice"."notice_content" IS '公告内容';
COMMENT ON COLUMN "public"."sys_notice"."status" IS '公告状态（0正常 1关闭）';
COMMENT ON COLUMN "public"."sys_notice"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_notice"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_notice"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_notice"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_notice"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_notice" IS '通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_oper_log";
CREATE TABLE "public"."sys_oper_log" (
  "oper_id" int8 NOT NULL DEFAULT nextval('oper_id_seq'::regclass),
  "title" varchar(50) COLLATE "pg_catalog"."default",
  "business_type" int4 DEFAULT 0,
  "method" varchar(500) COLLATE "pg_catalog"."default",
  "request_method" varchar(10) COLLATE "pg_catalog"."default",
  "operator_type" int4 DEFAULT 0,
  "oper_name" varchar(50) COLLATE "pg_catalog"."default",
  "dept_name" varchar(50) COLLATE "pg_catalog"."default",
  "oper_url" varchar(255) COLLATE "pg_catalog"."default",
  "oper_ip" varchar(50) COLLATE "pg_catalog"."default",
  "oper_location" varchar(255) COLLATE "pg_catalog"."default",
  "oper_param" varchar(8000) COLLATE "pg_catalog"."default",
  "json_result" varchar(8000) COLLATE "pg_catalog"."default",
  "status" int4 DEFAULT 0,
  "error_msg" varchar(8000) COLLATE "pg_catalog"."default",
  "oper_time" timestamp(6),
  "cost_time" int4,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_oper_log"."oper_id" IS '日志主键';
COMMENT ON COLUMN "public"."sys_oper_log"."title" IS '模块标题';
COMMENT ON COLUMN "public"."sys_oper_log"."business_type" IS '业务类型（0其它 1新增 2修改 3删除）';
COMMENT ON COLUMN "public"."sys_oper_log"."method" IS '方法名称';
COMMENT ON COLUMN "public"."sys_oper_log"."request_method" IS '请求方式';
COMMENT ON COLUMN "public"."sys_oper_log"."operator_type" IS '操作类别（0其它 1后台用户 2手机端用户）';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_name" IS '操作人员';
COMMENT ON COLUMN "public"."sys_oper_log"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_url" IS '请求URL';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_ip" IS '主机地址';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_location" IS '操作地点';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_param" IS '请求参数';
COMMENT ON COLUMN "public"."sys_oper_log"."json_result" IS '返回参数';
COMMENT ON COLUMN "public"."sys_oper_log"."status" IS '操作状态（0正常 1异常）';
COMMENT ON COLUMN "public"."sys_oper_log"."error_msg" IS '错误消息';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_time" IS '操作时间';
COMMENT ON COLUMN "public"."sys_oper_log"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_oper_log"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_oper_log"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_oper_log"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_oper_log"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_oper_log" IS '操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO "public"."sys_oper_log" VALUES (64660, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"JGCJYSKQ_04","createBy":"admin","createTime":"2025-05-24 11:16:14","energyId":"electric","name":"加工车间用压缩空气表03","nodeId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9","orderNum":0,"params":{},"pointId":"c5376e22-25c3-4da0-9ae3-683158768e3b","pointType":"STATISTIC","pointTypeCode":"STATISTIC"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named ''point_id'' in ''class com.zhitan.model.domain.MeterPoint''', '2025-05-24 11:16:16.475777', 41, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64661, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"JGCJYSKQ_04","createBy":"admin","createTime":"2025-05-24 11:17:01","energyId":"electric","name":"加工车间用压缩空气表03","nodeId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9","orderNum":0,"params":{},"pointId":"b757720f-d892-495b-8479-dccc3e3e3b35","pointType":"STATISTIC","pointTypeCode":"STATISTIC"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named ''point_id'' in ''class com.zhitan.model.domain.MeterPoint''', '2025-05-24 11:17:03.197225', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64662, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"JGCJYSKQ_04","createBy":"admin","createTime":"2025-05-24 11:17:39","energyId":"electric","name":"加工车间用压缩空气表03","nodeId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9","orderNum":0,"params":{},"pointId":"4d37a737-68c2-4f12-b61e-6a1905cd7b77","pointType":"STATISTIC","pointTypeCode":"STATISTIC"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named ''point_id'' in ''class com.zhitan.model.domain.MeterPoint''', '2025-05-24 11:17:40.892034', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64663, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"JGCJYSKQ_04","createBy":"admin","createTime":"2025-05-24 11:23:52","energyId":"compressedair","name":"加工车间用压缩空气表03","nodeId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9","orderNum":0,"params":{},"pointId":"c1ded134-9fa0-47ec-a333-c1a5d1e0468c","pointType":"STATISTIC","pointTypeCode":"STATISTIC"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named ''point_id'' in ''class com.zhitan.model.domain.MeterPoint''', '2025-05-24 11:23:57.757216', 27770, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64664, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"JGCJYSKQ_04","createBy":"admin","createTime":"2025-05-24 11:25:53","energyId":"electric","name":"加工车间用压缩空气表03","nodeId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9","orderNum":0,"params":{},"pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 11:25:55.285941', 2901, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64665, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 11:47:28.812917', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64666, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 11:48:16.623716', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64667, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 11:50:19.596754', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64668, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 11:51:35.24612', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64669, '模型节点', 1, 'com.zhitan.web.controller.model.ModelNodeController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode', '127.0.0.1', '内网IP', '{"address":"JCZB_ZC,JMJGCJ,","children":[],"code":"JMJGCJ","createBy":"admin","createTime":"2025-05-24 11:53:06","modelCode":"JCZBK_CODE","name":"精密加工车间","nodeCategory":"1","nodeId":"31a5a72f-2e6c-4422-8887-e07462ec88fc","orderNum":1,"params":{},"parentId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9"}', '{"msg":"操作成功","code":200,"data":{"address":"JCZB_ZC,JMJGCJ,","children":[],"code":"JMJGCJ","createBy":"admin","createTime":"2025-05-24 11:53:06","modelCode":"JCZBK_CODE","name":"精密加工车间","nodeCategory":"1","nodeId":"31a5a72f-2e6c-4422-8887-e07462ec88fc","orderNum":1,"params":{},"parentId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9"}}', 0, NULL, '2025-05-24 11:53:08.420162', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64670, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '127.0.0.1', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 11:54:32.773087', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64671, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '127.0.0.1', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 11:54:35.10078', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64672, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '127.0.0.1', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 11:54:36.487695', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64689, '模型节点', 3, 'com.zhitan.web.controller.model.ModelNodeController.remove()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/b4312e69-0f60-4e7f-903d-54a4b432424b', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 14:01:08.950445', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64673, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 13:34:38.063504', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64674, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 13:34:40.283926', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64675, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-24 13:40:39.980787', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64676, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 13:40:56.811258', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64677, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 13:41:00.276637', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64678, '模型节点', 3, 'com.zhitan.web.controller.model.ModelNodeController.remove()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/31a5a72f-2e6c-4422-8887-e07462ec88fc', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 13:50:43.337324', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64679, '模型节点', 1, 'com.zhitan.web.controller.model.ModelNodeController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode', '127.0.0.1', '内网IP', '{"address":"JCZB_ZC,JMJGCJ,","children":[],"code":"JMJGCJ","createBy":"admin","createTime":"2025-05-24 13:51:14","modelCode":"JCZBK_CODE","name":"精密加工车间","nodeCategory":"1","nodeId":"6cc93ad1-30f2-446b-88d8-4f9c93977cca","orderNum":1,"params":{},"parentId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9"}', '{"msg":"操作成功","code":200,"data":{"address":"JCZB_ZC,JMJGCJ,","children":[],"code":"JMJGCJ","createBy":"admin","createTime":"2025-05-24 13:51:14","modelCode":"JCZBK_CODE","name":"精密加工车间","nodeCategory":"1","nodeId":"6cc93ad1-30f2-446b-88d8-4f9c93977cca","orderNum":1,"params":{},"parentId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9"}}', 0, NULL, '2025-05-24 13:51:16.201632', 547, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64680, '模型节点', 3, 'com.zhitan.web.controller.model.ModelNodeController.remove()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/6cc93ad1-30f2-446b-88d8-4f9c93977cca', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 13:51:19.24928', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64681, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 13:56:00.285378', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64682, '模型节点', 1, 'com.zhitan.web.controller.model.ModelNodeController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode', '127.0.0.1', '内网IP', '{"address":"ZC,","children":[],"code":"ZC","createBy":"admin","createTime":"2025-05-24 14:00:27","modelCode":"BJGL","name":"总厂","nodeCategory":"0","nodeId":"76307d81-5e3c-461b-bbf0-8e279dd58d40","orderNum":1,"params":{},"parentId":""}', '{"msg":"操作成功","code":200,"data":{"address":"ZC,","children":[],"code":"ZC","createBy":"admin","createTime":"2025-05-24 14:00:27","modelCode":"BJGL","name":"总厂","nodeCategory":"0","nodeId":"76307d81-5e3c-461b-bbf0-8e279dd58d40","orderNum":1,"params":{},"parentId":""}}', 0, NULL, '2025-05-24 14:00:29.381837', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64683, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 14:00:31.494839', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64684, '模型节点', 1, 'com.zhitan.web.controller.model.ModelNodeController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode', '127.0.0.1', '内网IP', '{"address":"ZC,JMJGCJ,","children":[],"code":"JMJGCJ","createBy":"admin","createTime":"2025-05-24 14:00:55","modelCode":"BJGL","name":"精密加工车间","nodeCategory":"1","nodeId":"b4312e69-0f60-4e7f-903d-54a4b432424b","orderNum":1,"params":{},"parentId":"76307d81-5e3c-461b-bbf0-8e279dd58d40"}', '{"msg":"操作成功","code":200,"data":{"address":"ZC,JMJGCJ,","children":[],"code":"JMJGCJ","createBy":"admin","createTime":"2025-05-24 14:00:55","modelCode":"BJGL","name":"精密加工车间","nodeCategory":"1","nodeId":"b4312e69-0f60-4e7f-903d-54a4b432424b","orderNum":1,"params":{},"parentId":"76307d81-5e3c-461b-bbf0-8e279dd58d40"}}', 0, NULL, '2025-05-24 14:00:56.68537', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64685, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 14:00:58.388593', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64686, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/b4312e69-0f60-4e7f-903d-54a4b432424b', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 14:01:01.694369', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64687, '模型节点', 2, 'com.zhitan.web.controller.model.ModelNodeController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/modelnode', '127.0.0.1', '内网IP', '{"address":"ZC,JMJGCJ,","children":[],"code":"JMJGCJ","modelCode":"BJGL","name":"精密加工","nodeCategory":"1","nodeId":"b4312e69-0f60-4e7f-903d-54a4b432424b","orderNum":0,"params":{},"parentId":"76307d81-5e3c-461b-bbf0-8e279dd58d40","updateBy":"admin","updateTime":"2025-05-24 14:01:03"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 14:01:05.335866', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64688, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/b4312e69-0f60-4e7f-903d-54a4b432424b', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 14:01:07.806646', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64690, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 14:01:08.972186', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64691, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 14:01:15.09063', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64692, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 14:01:18.803862', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64693, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.setDevice()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" ["f15fc88f-96e4-4e80-9e8e-0a3a33eb8690"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 14:01:27.839194', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64694, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:01:31.130607', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64695, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:01:32.589956', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64696, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:01:34.227802', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64697, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:01:35.436763', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64698, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:01:36.719322', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64699, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:01:38.751474', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64700, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.delDevice()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 14:01:49.925366', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64701, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.setDevice()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" ["f15fc88f-96e4-4e80-9e8e-0a3a33eb8690"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 14:01:53.35008', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64702, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:11:27.486289', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64703, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:11:40.541386', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64704, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:11:43.255369', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64705, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:11:44.659139', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64706, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:12:11.745087', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64707, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:12:13.688526', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64887, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-26 10:07:27.552103', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64708, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:12:18.814346', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64709, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:16:17.945368', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64710, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:16:46.122959', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64711, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:19:42.697566', 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64712, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:19:54.084817', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64713, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:20:03.387607', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64714, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:20:04.400062', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64715, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 14:20:19.591183', 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64716, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:21:01.38273', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64717, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:21:02.568881', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64718, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 14:21:13.424285', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64719, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:21:25.239876', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64720, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:21:34.358326', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64721, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:21:37.316941', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64722, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:21:38.543229', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64723, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 14:21:44.564761', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64724, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:22:18.849258', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64725, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 14:22:27.028792', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64888, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-26 10:07:37.703617', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64726, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:22:49.436533', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64727, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-24 14:23:06.609443', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64728, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:23:17.132122', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64733, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:25:42.567507', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64735, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:26:49.036798', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64736, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:27:03.011266', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64737, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 14:27:16.19587', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64738, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 14:27:29.103531', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64739, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 14:35:55.591616', 268122, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64729, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:23:35.555742', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64730, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 14:24:07.29022', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64731, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:24:33.371313', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64732, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:25:04.967428', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64734, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:25:48.091739', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64740, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:35:55.596505', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64741, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:37:08.695854', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64742, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 14:37:11.310574', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64743, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 14:37:22.525777', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64744, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:00:20.079715', 1245157, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64745, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null,null,null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:00:20.098699', 59, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64746, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null,null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:00:20.112043', 61, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64747, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:01:19.036456', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64748, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:10:04.787801', 512850, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64749, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:10:30.592066', 13736, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64750, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:11:58.208457', 77232, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64751, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:12:31.655027', 80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64752, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:12:39.661421', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64753, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:16:05.559824', 52, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64755, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"获取关联设备出错!","code":500}', 0, NULL, '2025-05-24 15:16:05.559827', 60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64754, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:16:05.559787', 54, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64756, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:16:05.55982', 195540, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64757, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:16:05.563688', 50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64758, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null,null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:16:05.631289', 146, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64759, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:16:33.191443', 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64760, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:16:41.445558', 69, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64761, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:21:55.017912', 293790, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64762, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:23:14.893221', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64763, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:23:21.347797', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64764, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:24:10.391885', 66, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64765, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:24:37.04416', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64766, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:24:56.615262', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64767, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:25:06.67732', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64768, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:25:52.646093', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64769, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:26:03.126228', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64770, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:26:37.283386', 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64771, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:34:58.26278', 29, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64772, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:34:59.482706', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64773, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:35:03.849632', 69, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64774, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:37:45.189282', 136940, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64775, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:38:12.761861', 80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64776, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:42:05.246802', 79, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64777, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:42:12.644184', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64778, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:42:17.075183', 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64779, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:42:22.476733', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64780, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null,null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:54:59.359741', 38, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64781, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 15:54:59.373219', 726048, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64782, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 15:56:04.332627', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64783, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"YGDYPDS_LJL","createBy":"admin","createTime":"2025-05-24 16:00:36","energyId":"electric","name":"一中低压配电室1#变累积量","nodeId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9","orderNum":0,"params":{},"pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 16:00:38.187991', 64, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64784, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:02:48.613092', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64785, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 16:02:53.17154', 125, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64786, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/COLLECT', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "COLLECT" []', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 16:03:00.739858', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64787, '模型节点', 1, 'com.zhitan.web.controller.model.ModelNodeController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode', '127.0.0.1', '内网IP', '{"address":"ZC,CS,","children":[],"code":"CS","createBy":"admin","createTime":"2025-05-24 16:03:40","modelCode":"BJGL","name":"测试","nodeCategory":"1","nodeId":"638174a3-b673-432d-a25f-bc0f225f775c","orderNum":1,"params":{},"parentId":"76307d81-5e3c-461b-bbf0-8e279dd58d40"}', '{"msg":"操作成功","code":200,"data":{"address":"ZC,CS,","children":[],"code":"CS","createBy":"admin","createTime":"2025-05-24 16:03:40","modelCode":"BJGL","name":"测试","nodeCategory":"1","nodeId":"638174a3-b673-432d-a25f-bc0f225f775c","orderNum":1,"params":{},"parentId":"76307d81-5e3c-461b-bbf0-8e279dd58d40"}}', 0, NULL, '2025-05-24 16:03:42.314686', 577, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64788, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 16:03:44.733179', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64789, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:03:58.541163', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64790, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:04:02.904971', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64791, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:04:04.610405', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64792, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 16:08:02.878177', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64793, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:08:32.433132', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64795, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:10:17.880306', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64797, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:10:19.607983', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64802, '增加计量器具采集点', 1, 'com.zhitan.web.controller.model.MeterPointController.addCollectIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/meterIndex/fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68', '127.0.0.1', '内网IP', '"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68"', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 16:11:23.638761', 174, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64803, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:11:37.470344', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64808, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:12:47.040687', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64810, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:13:35.453546', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64814, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:19:46.830585', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64819, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:22:17.420866', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64821, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:22:32.968044', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64823, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:22:46.686527', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64825, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:23:43.648325', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64794, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:08:55.761824', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64796, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:10:18.70343', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64798, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:10:23.601261', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64799, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 16:10:24.874055', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64800, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 16:10:28.530367', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64801, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:11:06.441691', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64804, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:12:05.382727', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64805, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:12:07.713097', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64806, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:12:25.926264', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64807, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:12:29.272661', 29, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64809, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:12:56.846991', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64811, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:13:43.185997', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64812, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:13:43.88441', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64813, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:14:03.398202', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64815, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:19:50.632519', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64816, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:19:54.352132', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64817, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:19:57.738986', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64818, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:22:07.68992', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64820, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:22:25.847007', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64822, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:22:39.300904', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64824, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:23:35.566143', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64828, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:24:09.812928', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64829, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 16:24:11.192796', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64830, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:24:12.107463', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64826, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:24:00.811669', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64827, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:24:02.640839', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64831, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:24:18.395843', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64832, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 16:24:23.607108', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64833, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:24:51.695931', 47, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64834, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:24:53.567407', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64835, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:24:54.377908', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64836, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:24:54.865048', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64837, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:24:58.016043', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64838, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:25:00.534831', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64839, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-24 16:25:01.510107', 37, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64840, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:25:01.857237', 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64841, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-24 16:25:14.772725', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64842, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-24 16:25:17.879073', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64843, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-24 16:25:34.084474', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64844, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-24 16:25:42.401035', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64845, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-24 16:27:04.181447', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64846, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-24 16:31:06.970922', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64847, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-24 16:32:46.043481', 72309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64848, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:38:58.729428', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64849, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:39:10.259663', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64851, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:39:15.262888', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64854, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:40:29.692669', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64855, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:41:42.01846', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64873, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:52:30.027137', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64850, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:39:13.439454', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64852, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:39:16.97286', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64853, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:39:34.726274', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64856, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:43:13.072612', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64857, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:43:18.07984', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64858, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 16:43:28.788048', 79, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64859, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 16:47:19.025678', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64860, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:47:50.239578', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64861, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:48:04.768751', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64862, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:48:11.382616', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64863, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:48:18.979802', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64864, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:48:20.986681', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64865, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:48:41.083401', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64866, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.setDevice()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" ["f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 16:48:46.082835', 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64867, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:48:49.511084', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64868, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/COLLECT', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "COLLECT" [null,null,null,null,null,null,null,null,null,null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 16:49:06.916048', 43, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65012, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:51:01.24507', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64869, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:49:11.480944', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64870, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/COLLECT', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "COLLECT" [null,null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-24 16:49:20.013307', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64871, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:49:42.682517', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64872, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:49:44.651091', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64874, '尖峰平谷电价时间段', 2, 'com.zhitan.web.controller.peakvalley.SettingElectricityPriceDateController.edit()', 'PUT', 1, 'admin', NULL, '/electricitypricedate', '127.0.0.1', '内网IP', '{"beginDate":"2025-05-21","createBy":"admin","createTime":"2025-05-23 17:04:22","endDate":"2025-05-31","id":"e89b47bd-7c5f-4a02-8d47-aa66492c4928","params":{},"remark":"明天","updateBy":"admin","updateTime":"2025-05-24 16:55:46"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-24 16:55:47.710285', 28, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64875, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:56:22.551374', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64876, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:56:23.959344', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64877, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 16:56:26.999995', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64878, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-24 17:00:55.947192', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64879, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 09:58:15.833763', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64880, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 09:58:35.812203', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64881, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/COLLECT', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "COLLECT" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 09:58:44.164069', 72, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64882, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 09:59:00.565871', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64883, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 10:02:32.072053', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64884, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/COLLECT', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "COLLECT" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 10:02:51.855449', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64885, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-26 10:03:59.113563', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64886, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '127.0.0.1', '内网IP', '{"params":{}}', NULL, 1, '', '2025-05-26 10:04:18.26249', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64889, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 10:50:03.327201', 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64890, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 10:50:12.260424', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64891, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 10:50:13.910924', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64892, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 10:50:41.037788', 64, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64893, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '127.0.0.1', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 10:50:50.297742', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64894, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 10:51:43.359124', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64895, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 10:51:46.200671', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64896, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 10:51:47.317405', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64897, '尖峰平谷电价时间段', 2, 'com.zhitan.web.controller.peakvalley.SettingElectricityPriceDateController.edit()', 'PUT', 1, 'admin', NULL, '/electricitypricedate', '127.0.0.1', '内网IP', '{"beginDate":"2025-05-19","createBy":"admin","createTime":"2025-05-23 17:04:22","endDate":"2025-06-10","id":"e89b47bd-7c5f-4a02-8d47-aa66492c4928","params":{},"remark":"明天","updateBy":"admin","updateTime":"2025-05-26 10:52:29"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 10:52:29.655993', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64898, '尖峰平谷电价时间段', 3, 'com.zhitan.web.controller.peakvalley.SettingElectricityPriceDateController.remove()', 'DELETE', 1, 'admin', NULL, '/electricitypricedate/e89b47bd-7c5f-4a02-8d47-aa66492c4928', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 10:52:41.533493', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64899, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 13:56:12.542602', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64900, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 14:49:09.028406', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64901, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 14:50:45.128946', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64902, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 14:51:26.068533', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64903, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 14:51:50.495101', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64904, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 14:53:21.524182', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64905, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 14:53:50.618618', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64906, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 15:04:47.661838', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64907, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 15:04:50.081438', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64908, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 15:04:51.52715', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64909, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"aaa","createBy":"admin","createTime":"2025-05-26 15:06:28","energyId":"electric","name":"aa","nodeId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9","orderNum":12,"params":{},"pointCategory":"1","pointId":"090f3f44-ccdd-4447-bb78-c72c43298765","unitId":"t"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 15:06:28.772835', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64910, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.243', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-26 15:16:21.167088', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64911, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.243', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-26 15:16:24.841787', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64912, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.243', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-26 15:16:27.029057', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64913, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:05:08.363182', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64914, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:05:09.085334', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64915, '能耗统计分析-成本趋势分析（能源消耗成本）- 获取表格列表数据', 0, 'com.zhitan.web.controller.statisticalAnalysis.EnergyTypeAnalysisController.listEnergyCostTrend()', 'GET', 1, 'admin', NULL, '/energyTypeAnalysis/listEnergyCostTrend', '192.168.110.77', '内网IP', '{"dataTime":"2025-05-26","modelCode":"NYCBMX","timeType":"DAY","timeCode":"2025-05-26"}', NULL, 1, '未查询到节点信息', '2025-05-26 17:10:23.69974', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64916, '能耗统计分析-成本趋势分析（能源消耗成本）', 0, 'com.zhitan.web.controller.statisticalAnalysis.EnergyTypeAnalysisController.listEnergyCostTrendDetail()', 'GET', 1, 'admin', NULL, '/energyTypeAnalysis/listEnergyCostTrendDetail', '192.168.110.77', '内网IP', '{"dataTime":"2025-05-26","modelCode":"NYCBMX","timeType":"DAY","timeCode":"2025-05-26"}', NULL, 1, '未查询到节点信息', '2025-05-26 17:10:23.700122', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64917, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:10:30.556496', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64918, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:10:32.413457', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65013, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:51:04.374036', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64919, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:12:09.015252', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64920, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-26 17:12:10.784139', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64921, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:12:11.320376', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64922, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 17:12:15.939569', 85, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64923, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 17:12:31.143484', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64924, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:13:07.67566', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64925, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:13:31.202311', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64926, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:13:39.459999', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64927, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 17:13:51.194536', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64928, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 17:15:07.301986', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64929, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/COLLECT', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "COLLECT" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 17:15:52.172003', 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64930, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:16:40.25957', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64931, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:21:31.908194', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64932, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:22:41.134414', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64933, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.243', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" ["a01e5c96-be69-43b6-b0eb-83866d42a869"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:22:45.407491', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64934, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/COLLECT', '192.168.110.243', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "COLLECT" ["0394d6ff-0f15-405c-84ab-b72634c2894a"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:22:50.887899', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65014, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:51:05.401731', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64935, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:23:00.869845', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64936, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.243', '内网IP', '{"name":"风","params":{}}', '{"msg":"新增失败，请检查能源名称是否重复！","code":500}', 0, NULL, '2025-05-26 17:23:12.638747', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64937, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.243', '内网IP', '{"createBy":"admin","createTime":"2025-05-26 17:23:22","id":-2107695103,"name":"水","params":{},"updateBy":"admin"}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：151
### The error may exist in file [D:\java project\zhitan-ems-v3\zhitan-system\target\classes\mapper\basicdata\SysEnergyTemplateMapper.xml]
### The error may involve com.zhitan.basicdata.mapper.SysEnergyTemplateMapper.insertSysEnerclass-Inline
### The error occurred while setting parameters
### SQL: insert into sys_energy_template          ( update_time,             create_time,                                       name,                          create_time,             create_by,                          update_by )           values ( now(),             now(),                                       ?,                          ?,             ?,                          ? )
### Cause: org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：151
; bad SQL grammar []; nested exception is org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：151', '2025-05-26 17:23:22.653164', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64938, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:23:40.505024', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64939, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:23:45.006488', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64940, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:24:04.588241', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64941, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.delDevice()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:24:08.696383', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64942, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.setDevice()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" ["f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:24:13.68918', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64943, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:24:16.036947', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64944, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"1","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"kWh","updateBy":"admin","updateTime":"2025-05-26 17:29:53"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:29:52.981409', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64945, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:30:00.096828', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64946, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"2","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"kWh","updateBy":"admin","updateTime":"2025-05-26 17:30:05"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:30:05.761427', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64947, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"1","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 17:30:12"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:30:12.123153', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64948, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"1","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"kWh","updateBy":"admin","updateTime":"2025-05-26 17:30:22"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:30:22.009837', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64949, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:30:25.889562', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64950, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"2","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 17:31:07"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:31:07.11973', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64951, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:33:22.939145', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64952, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"1","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 17:34:14"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:34:14.016513', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64953, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"3","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 17:36:15"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:36:15.067529', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64954, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"2","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 17:36:24"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:36:24.867878', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64955, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"1","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 17:41:30"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:41:30.251657', 241978, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64956, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:42:50.470816', 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64957, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:42:51.129924', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64958, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"1","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 17:46:59"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:46:59.383921', 210037, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64959, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:47:27.830413', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64960, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"1","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 17:47:52"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:47:52.374365', 15907, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64961, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"1","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 17:48:29"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:48:29.605988', 94, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64962, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"1","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 17:49:25"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:49:25.063574', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65015, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:51:11.870577', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64963, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:54:00.487309', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64964, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 17:54:26.780302', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64967, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 18:07:58.91782', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64965, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.243', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"1","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 17:54:42"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:54:42.52963', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64966, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"1","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 17:56:34"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 17:56:56.110452', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64968, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 18:10:18.292457', 27, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64969, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"1","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 18:10:43"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:10:43.478757', 28, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64970, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"1","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 18:12:18"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:12:18.51106', 91, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64971, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"2","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 18:13:31"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:13:32.002027', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64972, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"3","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 18:14:25"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:14:25.235892', 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64973, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"4","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 18:14:31"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:14:31.357777', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64974, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"4","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 18:16:52"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:16:52.074102', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64975, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"5","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 18:16:57"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:16:57.591407', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64976, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"2","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 18:17:04"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:17:04.192189', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64977, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"3","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 18:17:09"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:17:09.245568', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64978, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"5","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 18:17:13"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:17:13.546272', 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64979, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 18:19:21.547569', 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65016, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:51:17.595988', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64980, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 18:19:29.743462', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64981, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 18:19:37.700698', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64982, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"3","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 18:21:36"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:21:36.676472', 37, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64983, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 18:22:37.547288', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64984, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"1","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 18:22:54"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:22:54.444378', 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64985, '指标信息', 3, 'com.zhitan.web.controller.model.MeterPointController.remove()', 'DELETE', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9/090f3f44-ccdd-4447-bb78-c72c43298765', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:22:59.214401', 26, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64986, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"JGCJLQXTYB","createBy":"admin","createTime":"2025-05-26 18:24:08","energyId":"electric","name":"加工车间冷却系统用表","nodeId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9","orderNum":0,"params":{},"pointCategory":"1","pointId":"9e2d73cb-1d87-4e05-9bbc-233b24ff9e62"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:24:08.771138', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64987, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"3","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 18:24:30"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:24:30.517803', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64988, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"4","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 18:24:33"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:24:33.945372', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64989, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"1","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-05-26 18:24:44"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 18:24:44.06597', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64990, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 18:30:49.042512', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64991, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 18:45:02.073888', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64992, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 19:08:19.800383', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64993, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 19:08:22.283559', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64994, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 19:08:26.100978', 79, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64995, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 19:10:42.970961', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64996, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 19:10:44.249504', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64997, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 19:10:46.621688', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64998, '指标信息', 3, 'com.zhitan.web.controller.model.MeterPointController.remove()', 'DELETE', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9/9e2d73cb-1d87-4e05-9bbc-233b24ff9e62', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 19:10:52.581419', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (64999, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 19:10:54.581445', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65000, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 19:11:27.170284', 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65001, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-26 19:11:40.680997', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65002, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 19:15:26.026399', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65003, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-26 19:15:30.980488', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65004, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"2","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 19:15:37"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 19:15:37.596205', 26, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65005, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"YGDYPDS_LJL","energyId":"electric","name":"一中低压配电室1#变累积量","orderNum":0,"params":{},"pointCategory":"2","pointId":"3e4583cf-8b92-415a-b830-27939a2462e1","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-05-26 19:15:40"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-26 19:15:40.88291', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65006, '能耗统计分析-成本趋势分析（能源消耗成本）- 获取表格列表数据', 0, 'com.zhitan.web.controller.statisticalAnalysis.EnergyTypeAnalysisController.listEnergyCostTrend()', 'GET', 1, 'admin', NULL, '/energyTypeAnalysis/listEnergyCostTrend', '192.168.110.77', '内网IP', '{"dataTime":"2025-05-27","modelCode":"NYCBMX","timeType":"DAY","timeCode":"2025-05-27"}', NULL, 1, '未查询到节点信息', '2025-05-27 09:50:38.610879', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65007, '能耗统计分析-成本趋势分析（能源消耗成本）', 0, 'com.zhitan.web.controller.statisticalAnalysis.EnergyTypeAnalysisController.listEnergyCostTrendDetail()', 'GET', 1, 'admin', NULL, '/energyTypeAnalysis/listEnergyCostTrendDetail', '192.168.110.77', '内网IP', '{"dataTime":"2025-05-27","modelCode":"NYCBMX","timeType":"DAY","timeCode":"2025-05-27"}', NULL, 1, '未查询到节点信息', '2025-05-27 09:50:38.610888', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65008, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:50:47.93663', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65009, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:50:52.050877', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65010, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:50:53.763525', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65011, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:50:59.194038', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65017, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:51:25.478301', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65018, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:51:38.913843', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65019, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:52:09.575516', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65020, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:53:05.673419', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65021, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:53:06.001816', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65022, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:53:16.914877', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65023, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:53:18.545318', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65024, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:53:50.321092', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65025, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:53:53.201632', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65026, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:54:58.828364', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65027, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:55:01.749842', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65028, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:55:04.423516', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65029, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:55:06.52923', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65030, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:55:09.187578', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65031, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:55:47.735472', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65032, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 09:55:48.936435', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65033, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 14:11:20.481212', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65034, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 14:11:23.872099', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65035, '根据电表id获取功率因数数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricPowerFactorController.list()', 'GET', 1, 'admin', NULL, '/powerFactorAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-05-27","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"0.00","max":"--","maxTime":"--","min":"--","minTime":"--"},"itemList":[{"timeCode":"00:00","value":"--"},{"timeCode":"01:00","value":"--"},{"timeCode":"02:00","value":"--"},{"timeCode":"03:00","value":"--"},{"timeCode":"04:00","value":"--"},{"timeCode":"05:00","value":"--"},{"timeCode":"06:00","value":"--"},{"timeCode":"07:00","value":"--"},{"timeCode":"08:00","value":"--"},{"timeCode":"09:00","value":"--"},{"timeCode":"10:00","value":"--"},{"timeCode":"11:00","value":"--"},{"timeCode":"12:00","value":"--"},{"timeCode":"13:00","value":"--"},{"timeCode":"14:00","value":"--"},{"timeCode":"15:00","value":"--"},{"timeCode":"16:00","value":"--"},{"timeCode":"17:00","value":"--"},{"timeCode":"18:00","value":"--"},{"timeCode":"19:00","value":"--"},{"timeCode":"20:00","value":"--"},{"timeCode":"21:00","value":"--"},{"timeCode":"22:00","value":"--"},{"timeCode":"23:00","value":"--"}]}}', 0, NULL, '2025-05-27 14:11:24.01491', 135, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65036, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 14:11:25.884709', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65037, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-05-27","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"--","max":"--","maxTime":"--","min":"--","minTime":"--","rate":"--"},"itemList":[]}}', 0, NULL, '2025-05-27 14:11:25.915593', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65038, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-05-27","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"--","max":"--","maxTime":"--","min":"--","minTime":"--","rate":"--"},"itemList":[]}}', 0, NULL, '2025-05-27 14:11:29.407901', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65039, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 14:11:32.248952', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65040, '根据电表id获取功率因数数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricPowerFactorController.list()', 'GET', 1, 'admin', NULL, '/powerFactorAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-05-27","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"0.00","max":"--","maxTime":"--","min":"--","minTime":"--"},"itemList":[{"timeCode":"00:00","value":"--"},{"timeCode":"01:00","value":"--"},{"timeCode":"02:00","value":"--"},{"timeCode":"03:00","value":"--"},{"timeCode":"04:00","value":"--"},{"timeCode":"05:00","value":"--"},{"timeCode":"06:00","value":"--"},{"timeCode":"07:00","value":"--"},{"timeCode":"08:00","value":"--"},{"timeCode":"09:00","value":"--"},{"timeCode":"10:00","value":"--"},{"timeCode":"11:00","value":"--"},{"timeCode":"12:00","value":"--"},{"timeCode":"13:00","value":"--"},{"timeCode":"14:00","value":"--"},{"timeCode":"15:00","value":"--"},{"timeCode":"16:00","value":"--"},{"timeCode":"17:00","value":"--"},{"timeCode":"18:00","value":"--"},{"timeCode":"19:00","value":"--"},{"timeCode":"20:00","value":"--"},{"timeCode":"21:00","value":"--"},{"timeCode":"22:00","value":"--"},{"timeCode":"23:00","value":"--"}]}}', 0, NULL, '2025-05-27 14:11:32.280306', 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65041, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-05-27 14:11:34.600448', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65042, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-27 14:11:42.177968', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65043, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"JGCJLQXTYB","createBy":"admin","createTime":"2025-05-27 14:12:36","energyId":"electric","name":"加工车间冷却系统用表","nodeId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9","orderNum":0,"params":{},"pointCategory":"1","pointId":"286d41b7-40e7-4d07-83d6-4ab82b564e6b","unitId":"WF"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-27 14:12:35.763858', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65044, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-27 14:13:26.3066', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65045, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-27 14:13:31.374405', 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65046, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/STATISTIC', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "STATISTIC" [null]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-05-27 14:13:53.334977', 33, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65047, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-27 14:24:55.797992', 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65048, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-27 14:25:00.003312', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65049, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"JGCJLQXTYB","energyId":"electric","name":"加工车间冷却系统用表","orderNum":0,"params":{},"pointCategory":"2"}', '{"msg":"指标编码不能重复！","code":500}', 0, NULL, '2025-05-27 14:25:23.006815', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65050, '指标信息', 1, 'com.zhitan.web.controller.model.MeterPointController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/energyindex/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '"20fc4a28-2c22-41f6-b49f-91754e7ecee9" {"code":"YZDYPDS_BLJL","createBy":"admin","createTime":"2025-05-27 14:25:43","energyId":"electric","name":"一中低压配电室1#泵累积量","nodeId":"20fc4a28-2c22-41f6-b49f-91754e7ecee9","orderNum":0,"params":{},"pointCategory":"2","pointId":"fd435788-c732-4561-9b85-d83343778483"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-05-27 14:25:43.027425', 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65051, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-05-27 14:25:51.322384', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65052, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 10:24:16.816192', 63, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65053, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 10:24:24.837349', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65054, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" ["a01e5c96-be69-43b6-b0eb-83866d42a869"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 10:24:31.575324', 49, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65055, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 10:24:34.344126', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65056, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.setDevice()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" ["f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","1f131d5e-cd35-4e81-86e1-da0310de1ac2"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 10:24:39.06612', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65057, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null,"a01e5c96-be69-43b6-b0eb-83866d42a869"]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-06-03 10:24:46.476068', 57, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65058, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 10:26:48.750919', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65059, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 10:33:40.681106', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65060, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 10:57:26.964638', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65061, '能耗统计分析-成本趋势分析（能源消耗成本）', 0, 'com.zhitan.web.controller.statisticalAnalysis.EnergyTypeAnalysisController.listEnergyCostTrendDetail()', 'GET', 1, 'admin', NULL, '/energyTypeAnalysis/listEnergyCostTrendDetail', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-03","modelCode":"NYCBMX","timeType":"DAY","timeCode":"2025-06-03"}', NULL, 1, '未查询到节点信息', '2025-06-03 11:20:33.83834', 70, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65062, '能耗统计分析-成本趋势分析（能源消耗成本）- 获取表格列表数据', 0, 'com.zhitan.web.controller.statisticalAnalysis.EnergyTypeAnalysisController.listEnergyCostTrend()', 'GET', 1, 'admin', NULL, '/energyTypeAnalysis/listEnergyCostTrend', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-03","modelCode":"NYCBMX","timeType":"DAY","timeCode":"2025-06-03"}', NULL, 1, '未查询到节点信息', '2025-06-03 11:20:33.83833', 70, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65063, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:16:14.93402', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65064, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"2","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","updateBy":"admin","updateTime":"2025-06-03 14:16:22"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:16:24.277001', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65065, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"2","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"kWh","updateBy":"admin","updateTime":"2025-06-03 14:16:44"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:16:45.880798', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65066, '指标信息', 2, 'com.zhitan.web.controller.model.MeterPointController.edit()', 'PUT', 1, 'admin', NULL, '/basicsetting/energyindex', '192.168.110.77', '内网IP', '{"code":"JGCJYSKQ_04","energyId":"electric","name":"加工车间用压缩空气表03","orderNum":0,"params":{},"pointCategory":"2","pointId":"a01e5c96-be69-43b6-b0eb-83866d42a869","pointType":"STATISTIC","pointTypeCode":"STATISTIC","unitId":"t","updateBy":"admin","updateTime":"2025-06-03 14:16:49"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:16:50.960593', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65067, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:17:20.560612', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65068, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-03 14:17:26.60842', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65069, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.setDevice()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" ["1f131d5e-cd35-4e81-86e1-da0310de1ac2"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:17:30.676525', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65070, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:17:32.565159', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65071, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/STATISTIC', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "STATISTIC" ["3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:17:38.446902', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65072, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" ["a01e5c96-be69-43b6-b0eb-83866d42a869"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:18:03.579272', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65073, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:18:16.906557', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65074, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/COLLECT', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "COLLECT" [null,"8c89327b-c5ed-46c0-8e84-8225f63facd1"]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-06-03 14:31:14.786923', 99, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65075, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" [null,"3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-06-03 14:31:24.107346', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65076, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:31:26.100685', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65077, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/STATISTIC', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "STATISTIC" [null,"a01e5c96-be69-43b6-b0eb-83866d42a869"]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-06-03 14:31:37.943219', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65078, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/STATISTIC', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "STATISTIC" ["3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:32:26.269926', 33, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65079, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" ["3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:32:33.056272', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65080, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/STATISTIC', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "STATISTIC" [null,"3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-06-03 14:36:39.377373', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65081, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:36:49.464107', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65082, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/STATISTIC', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "STATISTIC" ["a01e5c96-be69-43b6-b0eb-83866d42a869"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:37:11.037733', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65083, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:38:13.959905', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65084, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:38:22.393672', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65085, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:38:23.529386', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65086, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/STATISTIC', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "STATISTIC" [null,"3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-06-03 14:38:33.2104', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65087, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:38:36.950009', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65088, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:38:38.877807', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65089, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:41:23.296677', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65107, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:03:16.110761', 34, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65090, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/COLLECT', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "COLLECT" ["0394d6ff-0f15-405c-84ab-b72634c2894a"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:41:29.958035', 28, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65091, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/STATISTIC', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "STATISTIC" ["3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:41:37.025788', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65092, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:41:46.057076', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65093, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:41:47.963981', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65094, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:41:52.86708', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65095, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:41:54.032173', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65096, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.setDevice()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" ["1f131d5e-cd35-4e81-86e1-da0310de1ac2","f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:41:58.429326', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65097, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/COLLECT', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "COLLECT" ["0394d6ff-0f15-405c-84ab-b72634c2894a"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:42:09.624437', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65098, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/COLLECT', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "COLLECT" [null,"0394d6ff-0f15-405c-84ab-b72634c2894a"]', '{"msg":"操作失败","code":500}', 0, NULL, '2025-06-03 14:42:19.918796', 55, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65099, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/COLLECT', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "COLLECT" ["0394d6ff-0f15-405c-84ab-b72634c2894a"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:42:25.580092', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65100, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:42:27.976332', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65101, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:42:38.31295', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65102, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:42:45.220778', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65103, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:42:56.14154', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65104, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 14:42:57.423023', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65105, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:43:31.60645', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65106, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 14:43:38.452682', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65108, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:08:52.423327', 262035, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65109, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:09:47.263858', 14066, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65110, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:10:15.93089', 84, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65111, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:14:33.851085', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65112, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:16:59.644566', 52652, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65113, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:17:23.46223', 11682, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65114, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 15:18:00.33895', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65115, '能源品种设置', 3, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.remove()', 'DELETE', 1, 'admin', NULL, '/enerInfoManage/enerclass/1', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:22:51.507606', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65116, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:22:58","id":1063153665,"name":"水","params":{},"updateBy":"admin"}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：151
### The error may exist in file [D:\java project\zhitan-ems-v3\zhitan-system\target\classes\mapper\basicdata\SysEnergyTemplateMapper.xml]
### The error may involve com.zhitan.basicdata.mapper.SysEnergyTemplateMapper.insertSysEnerclass-Inline
### The error occurred while setting parameters
### SQL: insert into sys_energy_template          ( update_time,             create_time,                                       name,                          create_time,             create_by,                          update_by )           values ( now(),             now(),                                       ?,                          ?,             ?,                          ? )
### Cause: org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：151
; bad SQL grammar []; nested exception is org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：151', '2025-06-03 15:22:59.738918', 53, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65117, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:23:57","id":-1315016703,"name":"水","params":{},"updateBy":"admin"}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：151
### The error may exist in file [D:\java project\zhitan-ems-v3\zhitan-system\target\classes\mapper\basicdata\SysEnergyTemplateMapper.xml]
### The error may involve com.zhitan.basicdata.mapper.SysEnergyTemplateMapper.insertSysEnerclass-Inline
### The error occurred while setting parameters
### SQL: insert into sys_energy_template          ( update_time,             create_time,                                       name,                          create_time,             create_by,                          update_by )           values ( now(),             now(),                                       ?,                          ?,             ?,                          ? )
### Cause: org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：151
; bad SQL grammar []; nested exception is org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：151', '2025-06-03 15:23:59.553572', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65118, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:28:25","id":173957122,"name":"水","params":{},"updateBy":"admin"}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：138
### The error may exist in file [D:\java project\zhitan-ems-v3\zhitan-system\target\classes\mapper\basicdata\SysEnergyTemplateMapper.xml]
### The error may involve com.zhitan.basicdata.mapper.SysEnergyTemplateMapper.insertSysEnerclass-Inline
### The error occurred while setting parameters
### SQL: insert into sys_energy_template          ( update_time,             create_time,                          name,                          create_time,             create_by,                          update_by )           values ( now(),             now(),                          ?,                          ?,             ?,                          ? )
### Cause: org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：138
; bad SQL grammar []; nested exception is org.postgresql.util.PSQLException: ERROR: column "create_time" specified more than once
  位置：138', '2025-06-03 15:28:27.221227', 75, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65119, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:30:18","id":1830744066,"name":"水","params":{},"updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:30:20.233205', 45, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65120, '能源品种设置', 2, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.edit()', 'PUT', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:30:20","id":223,"name":"水","params":{},"remark":"shui","updateBy":"admin","updateTime":"2025-06-03 15:30:20"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:30:34.085312', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65121, '能源品种设置', 2, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.edit()', 'PUT', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:30:20","id":223,"name":"huo","params":{},"remark":"shui","updateBy":"admin","updateTime":"2025-06-03 15:30:34"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:30:40.813592', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65122, '能源品种设置', 2, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.edit()', 'PUT', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:30:20","id":223,"name":"火","params":{},"remark":"shui","updateBy":"admin","updateTime":"2025-06-03 15:30:40"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:31:40.012703', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65123, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 15:32:30.870603', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65124, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:57:03.328983', 74, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65125, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 15:57:23.672483', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65126, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:08:47.99336', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65127, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 16:09:05.862125', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65128, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:09:29.119989', 65, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65129, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:09:44.876368', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65130, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 16:09:46.679178', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65131, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:09:50.842732', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65132, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:09:53.71738', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65133, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/STATISTIC', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "STATISTIC" ["a01e5c96-be69-43b6-b0eb-83866d42a869","3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:09:58.621153', 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65134, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/638174a3-b673-432d-a25f-bc0f225f775c/COLLECT', '192.168.110.77', '内网IP', '"638174a3-b673-432d-a25f-bc0f225f775c" "COLLECT" ["8c89327b-c5ed-46c0-8e84-8225f63facd1","0394d6ff-0f15-405c-84ab-b72634c2894a"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:10:10.315295', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65135, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 16:10:15.425128', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65136, '能源品种设置', 2, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.edit()', 'PUT', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:30:20","id":223,"name":"火","params":{},"remark":"shui","updateBy":"admin","updateTime":"2025-06-03 15:31:39"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:14:26.51802', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65137, '能源品种设置', 2, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.edit()', 'PUT', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:30:20","id":223,"name":"火","params":{},"remark":"shui","updateBy":"admin","updateTime":"2025-06-03 16:14:26"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:14:38.216235', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65166, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 09:30:24.140088', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65138, '能源品种设置', 2, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.edit()', 'PUT', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:30:20","id":223,"name":"火","params":{},"remark":"shui","updateBy":"admin","updateTime":"2025-06-03 16:14:38"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:16:53.898047', 20676, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65139, '能源品种设置', 2, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.edit()', 'PUT', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:30:20","id":223,"name":"火","params":{},"remark":"shu","updateBy":"admin","updateTime":"2025-06-03 16:14:38"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:17:42.908426', 2136, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65140, '能源品种设置', 2, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.edit()', 'PUT', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:30:20","id":223,"name":"火","params":{},"remark":"shu","updateBy":"admin","updateTime":"2025-06-03 16:17:42"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:24:26.264342', 84, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65141, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 16:25:10.834061', 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65142, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/STATISTIC', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "STATISTIC" ["3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:25:16.568437', 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65143, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40/COLLECT', '192.168.110.77', '内网IP', '"76307d81-5e3c-461b-bbf0-8e279dd58d40" "COLLECT" ["8c89327b-c5ed-46c0-8e84-8225f63facd1","0394d6ff-0f15-405c-84ab-b72634c2894a"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 16:25:21.221895', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65144, '能源品种设置', 2, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.edit()', 'PUT', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 15:30:20","id":223,"name":"水","params":{},"remark":"shu","updateBy":"admin","updateTime":"2025-06-03 16:24:26"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 17:33:26.266027', 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65145, '能源品种设置', 1, 'com.zhitan.web.controller.basicdata.SysEnergyTemplateController.add()', 'POST', 1, 'admin', NULL, '/enerInfoManage/enerclass', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-03 17:35:41","id":396271618,"name":"天然气","params":{},"updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 17:35:43.263149', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65146, '尖峰平谷电价时间段', 1, 'com.zhitan.web.controller.peakvalley.SettingElectricityPriceDateController.add()', 'POST', 1, 'admin', NULL, '/electricitypricedate', '192.168.110.77', '内网IP', '{"beginDate":"2025-06-18","createBy":"admin","createTime":"2025-06-03 17:36:50","endDate":"2025-06-19","id":"de56e6b6-7893-4c48-8574-6ececfb964d6","params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 17:36:52.414066', 47, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65147, '【尖峰平谷电价明细】', 2, 'com.zhitan.web.controller.peakvalley.SettingElectricityPriceController.saveList()', 'PUT', 1, 'admin', NULL, '/electricityprice/save', '192.168.110.77', '内网IP', '[{"createBy":"admin","createTime":"2025-06-03 17:37:25","effecticityPrice":0.2,"id":"1929834799357140994","params":{},"parentId":"de56e6b6-7893-4c48-8574-6ececfb964d6","startTime":"00:00:00","stopTime":"06:00:00","type":"PEAK"},{"createBy":"admin","createTime":"2025-06-03 17:37:25","effecticityPrice":0.1,"id":"1929834799357140995","params":{},"parentId":"de56e6b6-7893-4c48-8574-6ececfb964d6","startTime":"06:00:00","stopTime":"00:00:00","type":"VALLEY"}]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-03 17:37:27.101939', 104, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65148, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 17:39:03.954504', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65149, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 17:39:05.184102', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65150, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:04:07.2486', 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65151, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:04:11.439763', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65152, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:04:12.221707', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65153, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:04:13.213155', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65154, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:04:16.912249', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65155, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:04:19.320635', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65156, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:04:22.233668', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65157, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:04:24.492036', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65158, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:04:25.620717', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65159, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:04:30.653124', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65160, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:06:02.166134', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65161, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-03 18:06:03.248904', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65162, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 09:29:49.25739', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65163, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 09:29:52.108992', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65164, '模型节点', 1, 'com.zhitan.web.controller.model.ModelNodeController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode', '192.168.110.77', '内网IP', '{"address":"SYZC,","children":[],"code":"SYZC","createBy":"admin","createTime":"2025-06-04 09:30:18","modelCode":"COMPREHENSIVE_CODE","name":"总厂","nodeCategory":"0","nodeId":"6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c","orderNum":1,"params":{},"parentId":""}', '{"msg":"操作成功","code":200,"data":{"address":"SYZC,","children":[],"code":"SYZC","createBy":"admin","createTime":"2025-06-04 09:30:18","modelCode":"COMPREHENSIVE_CODE","name":"总厂","nodeCategory":"0","nodeId":"6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c","orderNum":1,"params":{},"parentId":""}}', 0, NULL, '2025-06-04 09:30:21.097392', 35, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65165, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 09:30:22.672169', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65167, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.setDevice()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '"6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c" ["f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","1f131d5e-cd35-4e81-86e1-da0310de1ac2"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 09:30:33.557681', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65168, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c/STATISTIC', '192.168.110.77', '内网IP', '"6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c" "STATISTIC" ["3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 09:30:38.205182', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65169, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c/COLLECT', '192.168.110.77', '内网IP', '"6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c" "COLLECT" ["0394d6ff-0f15-405c-84ab-b72634c2894a","8c89327b-c5ed-46c0-8e84-8225f63facd1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 09:30:44.642658', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65170, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 09:37:15.228154', 45, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65171, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 09:41:24.326721', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65172, '拓扑图', 2, 'com.zhitan.web.controller.realtimedata.SvgAttachController.edit()', 'PUT', 1, 'admin', NULL, '/equipmentFile', '192.168.110.77', '内网IP', '{"filePath":"https://demo-ems.zhitancloud.com/prod-api/profile/upload/2025/06/04/202变电所_20250604102447A001.svg","nodeId":"76307d81-5e3c-461b-bbf0-8e279dd58d40","svgType":"COLLECT"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 10:24:50.368661', 31, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65173, '拓扑图', 2, 'com.zhitan.web.controller.realtimedata.SvgAttachController.edit()', 'PUT', 1, 'admin', NULL, '/equipmentFile', '192.168.110.77', '内网IP', '{"filePath":"https://demo-ems.zhitancloud.com/prod-api/profile/upload/2025/06/04/202变电所_20250604102458A002.svg","nodeId":"76307d81-5e3c-461b-bbf0-8e279dd58d40","svgType":"COLLECT"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 10:25:00.951195', 90, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65174, '网关配置信息', 1, 'com.zhitan.web.controller.gatewaysetting.GatewaySettingController.add()', 'POST', 1, 'admin', NULL, '/gatewaySetting', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 10:26:01","gatewayName":"加工车间监测网关","gatewayNum":"114412","id":"ed6fffd6-9f4c-4f52-b196-35ed7434b3fb","installLocation":"总闸","ipAdd":"123.33.12.1","params":{},"specsModel":"123"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 10:26:03.45472', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65175, '网关配置信息', 2, 'com.zhitan.web.controller.gatewaysetting.GatewaySettingController.edit()', 'PUT', 1, 'admin', NULL, '/gatewaySetting', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 10:26:01","gatewayName":"加工车间监测网关","gatewayNum":"114412","id":"ed6fffd6-9f4c-4f52-b196-35ed7434b3fb","installLocation":"总闸","ipAdd":"123.33.12.2","params":{},"specsModel":"123","updateBy":"admin","updateTime":"2025-06-04 10:26:07"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 10:26:09.417934', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65176, '网关配置信息', 2, 'com.zhitan.web.controller.gatewaysetting.GatewaySettingController.edit()', 'PUT', 1, 'admin', NULL, '/gatewaySetting', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 10:26:01","gatewayName":"加工车间监测网关","gatewayNum":"114412","id":"ed6fffd6-9f4c-4f52-b196-35ed7434b3fb","installLocation":"总闸","ipAdd":"123.33.12.1","params":{},"specsModel":"123","updateBy":"admin","updateTime":"2025-06-04 10:26:13"}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 10:26:15.511288', 31, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65177, '【请填写功能名称】', 1, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.add()', 'POST', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","electricityFee":1,"electricityNum":4,"flatElectricity":1,"params":{},"peakElectricity":7,"powerFactor":1,"sharpElectricity":5,"time":"2025-06","type":"MONTH","valleyElectricity":1}', '{"msg":"尖峰平谷电量相加不等于总用电量","code":500}', 0, NULL, '2025-06-04 14:04:07.460059', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65178, '【请填写功能名称】', 1, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.add()', 'POST', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:04:15","electricityFee":1,"electricityNum":4,"flatElectricity":1,"id":"9399055e-56ec-42ed-8898-478b8718e4db","params":{},"peakElectricity":1,"powerFactor":1,"sharpElectricity":1,"time":"2025-06","type":"MONTH","valleyElectricity":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:04:17.475965', 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65179, '【请填写功能名称】', 2, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.edit()', 'PUT', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:04:15","electricityFee":1,"electricityNum":5,"flatElectricity":2,"id":"9399055e-56ec-42ed-8898-478b8718e4db","params":{},"peakElectricity":1,"powerFactor":1,"sharpElectricity":1,"time":"2025-06","type":"MONTH","updateBy":"admin","updateTime":"2025-06-04 14:04:22","valleyElectricity":1}', NULL, 1, '该时间段已维护电量信息！', '2025-06-04 14:04:24.777852', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65180, '【请填写功能名称】', 2, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.edit()', 'PUT', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:04:15","electricityFee":1,"electricityNum":4,"flatElectricity":1,"id":"9399055e-56ec-42ed-8898-478b8718e4db","params":{},"peakElectricity":1,"powerFactor":1,"sharpElectricity":1,"time":"2025-06","type":"MONTH","updateBy":"admin","updateTime":"2025-06-04 14:04:28","valleyElectricity":1}', NULL, 1, '该时间段已维护电量信息！', '2025-06-04 14:04:31.28424', 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65181, '【请填写功能名称】', 3, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.remove()', 'DELETE', 1, 'admin', NULL, '/cost/input/9399055e-56ec-42ed-8898-478b8718e4db', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:05:06.816322', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65223, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/aadad9cf-b73e-4a1a-99da-338ed2172525', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:56:30.515159', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65182, '【请填写功能名称】', 1, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.add()', 'POST', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:05:18","electricityFee":1,"electricityNum":4,"flatElectricity":1,"id":"613e324b-5d8b-4f7c-b2bf-4448347160d4","params":{},"peakElectricity":1,"powerFactor":1,"sharpElectricity":1,"time":"2025-06","type":"MONTH","valleyElectricity":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:05:20.746519', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65183, '【请填写功能名称】', 2, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.edit()', 'PUT', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:05:18","electricityFee":1,"electricityNum":4,"flatElectricity":1,"id":"613e324b-5d8b-4f7c-b2bf-4448347160d4","params":{},"peakElectricity":1,"powerFactor":1,"sharpElectricity":1,"time":"2025-06","type":"MONTH","updateBy":"admin","updateTime":"2025-06-04 14:05:22","valleyElectricity":1}', NULL, 1, '该时间段已维护电量信息！', '2025-06-04 14:05:24.683603', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65184, '【请填写功能名称】', 2, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.edit()', 'PUT', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:05:18","electricityFee":1,"electricityNum":4,"flatElectricity":1,"id":"613e324b-5d8b-4f7c-b2bf-4448347160d4","params":{},"peakElectricity":1,"powerFactor":1,"sharpElectricity":1,"time":"2025-06","type":"MONTH","updateBy":"admin","updateTime":"2025-06-04 14:06:45","valleyElectricity":1}', NULL, 1, '该时间段已维护电量信息！', '2025-06-04 14:06:47.471966', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65185, '【请填写功能名称】', 2, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.edit()', 'PUT', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:05:18","electricityFee":1,"electricityNum":4,"flatElectricity":1,"id":"613e324b-5d8b-4f7c-b2bf-4448347160d4","params":{},"peakElectricity":1,"powerFactor":1,"sharpElectricity":1,"time":"2025-06","type":"MONTH","updateBy":"admin","updateTime":"2025-06-04 14:14:25","valleyElectricity":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:14:27.990095', 168, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65186, '【请填写功能名称】', 2, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.edit()', 'PUT', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:05:18","electricityFee":1,"electricityNum":5,"flatElectricity":1,"id":"613e324b-5d8b-4f7c-b2bf-4448347160d4","params":{},"peakElectricity":1,"powerFactor":1,"sharpElectricity":2,"time":"2025-06","type":"MONTH","updateBy":"admin","updateTime":"2025-06-04 14:14:30","valleyElectricity":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:14:32.912167', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65187, '【请填写功能名称】', 2, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.edit()', 'PUT', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:05:18","electricityFee":2,"electricityNum":6,"flatElectricity":1,"id":"613e324b-5d8b-4f7c-b2bf-4448347160d4","params":{},"peakElectricity":2,"powerFactor":1,"sharpElectricity":2,"time":"2025-06","type":"MONTH","updateBy":"admin","updateTime":"2025-06-04 14:14:42","valleyElectricity":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:14:44.97389', 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65188, '【请填写功能名称】', 3, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.remove()', 'DELETE', 1, 'admin', NULL, '/cost/input/613e324b-5d8b-4f7c-b2bf-4448347160d4', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:14:49.055093', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65189, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:20:30.28184', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65190, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:28:33.331336', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65191, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:28:34.332895', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65192, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:28:43.487775', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65193, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:28:44.295325', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65194, '【请填写功能名称】', 1, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.add()', 'POST', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:33:21","electricityFee":1,"electricityNum":5,"flatElectricity":1,"id":"13063c92-f7f4-4346-9d62-b17338e94f3b","params":{},"peakElectricity":2,"powerFactor":1,"sharpElectricity":1,"time":"2025","type":"YEAR","valleyElectricity":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:33:23.513142', 34, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65195, '【请填写功能名称】', 2, 'com.zhitan.web.controller.costmanagement.InputElectricityCostController.edit()', 'PUT', 1, 'admin', NULL, '/cost/input', '192.168.110.77', '内网IP', '{"createBy":"admin","createTime":"2025-06-04 14:33:21","electricityFee":1,"electricityNum":6,"flatElectricity":2,"id":"13063c92-f7f4-4346-9d62-b17338e94f3b","params":{},"peakElectricity":2,"powerFactor":1,"sharpElectricity":1,"time":"2025-06","type":"MONTH","updateBy":"admin","updateTime":"2025-06-04 14:33:31","valleyElectricity":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:33:33.673165', 45, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65208, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 14:43:52.651733', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65196, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:36:27.883807', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65197, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:36:28.854821', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65198, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:36:29.205702', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65199, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:36:29.805451', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65200, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.delDevice()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:36:32.014083', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65201, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.delDevice()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:36:33.282158', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65202, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.delDevice()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:36:34.708577', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65203, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:36:37.163697', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65204, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:36:39.856729', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65205, '删除模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.delSettingIndex()', 'DELETE', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:36:41.572597', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65206, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:36:43.501257', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65207, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/638174a3-b673-432d-a25f-bc0f225f775c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:36:44.391428', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65209, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.243', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:43:57.837386', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65210, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 14:53:32.504311', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65211, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:53:34.467642', 43, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65212, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:53:36.937201', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65213, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:54:03.02051', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65214, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 14:55:03.001802', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65215, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:55:06.335801', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65216, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:55:06.824504', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65217, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:55:07.956545', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65218, '模型节点', 1, 'com.zhitan.web.controller.model.ModelNodeController.add()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode', '192.168.110.77', '内网IP', '{"address":"SYZC,KB_DB3,","children":[],"code":"KB_DB3","createBy":"admin","createTime":"2025-06-04 14:55:32","modelCode":"COMPREHENSIVE_CODE","name":"组装车间高压配电室九中1#变","nodeCategory":"2","nodeId":"aadad9cf-b73e-4a1a-99da-338ed2172525","orderNum":1,"params":{},"parentId":"6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c"}', '{"msg":"操作成功","code":200,"data":{"address":"SYZC,KB_DB3,","children":[],"code":"KB_DB3","createBy":"admin","createTime":"2025-06-04 14:55:32","modelCode":"COMPREHENSIVE_CODE","name":"组装车间高压配电室九中1#变","nodeCategory":"2","nodeId":"aadad9cf-b73e-4a1a-99da-338ed2172525","orderNum":1,"params":{},"parentId":"6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c"}}', 0, NULL, '2025-06-04 14:55:34.805702', 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65219, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/aadad9cf-b73e-4a1a-99da-338ed2172525', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 14:55:36.002896', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65220, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.setDevice()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/device/aadad9cf-b73e-4a1a-99da-338ed2172525', '192.168.110.77', '内网IP', '"aadad9cf-b73e-4a1a-99da-338ed2172525" ["fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:55:42.429033', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65221, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/aadad9cf-b73e-4a1a-99da-338ed2172525/STATISTIC', '192.168.110.77', '内网IP', '"aadad9cf-b73e-4a1a-99da-338ed2172525" "STATISTIC" ["3e4583cf-8b92-415a-b830-27939a2462e1","a01e5c96-be69-43b6-b0eb-83866d42a869"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:55:48.999354', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65222, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/aadad9cf-b73e-4a1a-99da-338ed2172525/COLLECT', '192.168.110.77', '内网IP', '"aadad9cf-b73e-4a1a-99da-338ed2172525" "COLLECT" ["0394d6ff-0f15-405c-84ab-b72634c2894a","8c89327b-c5ed-46c0-8e84-8225f63facd1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 14:55:56.268026', 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65224, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 14:58:12.226395', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65225, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/6c8acbf1-2540-4db1-a9ef-c71b7c0edb4c', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009642","id":"1f131d5e-cd35-4e81-86e1-da0310de1ac2","meterName":"3#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-04 14:58:13.551183', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65226, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 15:42:46.292508', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65227, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"--","max":"--","maxTime":"--","min":"--","minTime":"--","rate":"--"},"itemList":[]}}', 0, NULL, '2025-06-04 15:42:46.301477', 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65228, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 15:42:48.245848', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65229, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 15:42:49.593706', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65230, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 15:49:43.571005', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65231, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"--","max":"--","maxTime":"--","min":"--","minTime":"--","rate":"--"},"itemList":[]}}', 0, NULL, '2025-06-04 15:49:43.588078', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65232, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 15:53:54.438902', 26, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65233, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"--","max":"--","maxTime":"--","min":"--","minTime":"--","rate":"--"},"itemList":[]}}', 0, NULL, '2025-06-04 15:53:54.463968', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65234, '根据时间与点位查询历史监测数据', 2, 'com.zhitan.web.controller.history.HistoryDataTrendController.getHistoricalDataByIndexId()', 'GET', 1, 'admin', NULL, '/dataMonitoring/historyDataTrend/getHistoricalDataByIndexId', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-04 16:00:00","timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"未找到点位信息","code":500}', 0, NULL, '2025-06-04 16:08:33.760569', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65235, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:10:22.263663', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65236, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"--","max":"--","maxTime":"--","min":"--","minTime":"--","rate":"--"},"itemList":[]}}', 0, NULL, '2025-06-04 16:10:22.294126', 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65237, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:10:23.313607', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65238, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:10:25.161217', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65239, '根据时间与点位查询历史监测数据', 2, 'com.zhitan.web.controller.history.HistoryDataTrendController.getHistoricalDataByIndexId()', 'GET', 1, 'admin', NULL, '/dataMonitoring/historyDataTrend/getHistoricalDataByIndexId', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-04 16:00:00","timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"未找到点位信息","code":500}', 0, NULL, '2025-06-04 16:10:52.537601', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65240, '根据时间与点位查询历史监测数据', 2, 'com.zhitan.web.controller.history.HistoryDataTrendController.getHistoricalDataByIndexId()', 'GET', 1, 'admin', NULL, '/dataMonitoring/historyDataTrend/getHistoricalDataByIndexId', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-04 16:00:00","timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"未找到点位信息","code":500}', 0, NULL, '2025-06-04 16:11:27.596242', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65241, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:11:36.224777', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65242, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"--","max":"--","maxTime":"--","min":"--","minTime":"--","rate":"--"},"itemList":[]}}', 0, NULL, '2025-06-04 16:11:36.249958', 37, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65243, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:11:38.287368', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65244, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:11:40.0837', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65245, '根据时间与点位查询历史监测数据', 2, 'com.zhitan.web.controller.history.HistoryDataTrendController.getHistoricalDataByIndexId()', 'GET', 1, 'admin', NULL, '/dataMonitoring/historyDataTrend/getHistoricalDataByIndexId', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-04 16:00:00","timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"未找到点位信息","code":500}', 0, NULL, '2025-06-04 16:34:31.725594', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65246, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:34:33.705025', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65247, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:34:35.680327', 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65248, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"--","max":"--","maxTime":"--","min":"--","minTime":"--","rate":"--"},"itemList":[]}}', 0, NULL, '2025-06-04 16:34:35.705889', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65249, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:34:36.644338', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65250, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:34:38.314163', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65251, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 16:36:11.23554', 48, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65252, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"--","max":"--","maxTime":"--","min":"--","minTime":"--","rate":"--"},"itemList":[]}}', 0, NULL, '2025-06-04 16:36:11.264541', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65253, '根据时间与点位查询历史监测数据', 2, 'com.zhitan.web.controller.history.HistoryDataTrendController.getHistoricalDataByIndexId()', 'GET', 1, 'admin', NULL, '/dataMonitoring/historyDataTrend/getHistoricalDataByIndexId', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-04 16:00:00","timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"未找到点位信息","code":500}', 0, NULL, '2025-06-04 16:41:15.913754', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65254, '能耗统计分析-成本趋势分析（能源消耗成本）- 获取表格列表数据', 0, 'com.zhitan.web.controller.statisticalAnalysis.EnergyTypeAnalysisController.listEnergyCostTrend()', 'GET', 1, 'admin', NULL, '/energyTypeAnalysis/listEnergyCostTrend', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-04","modelCode":"NYCBMX","timeType":"DAY","timeCode":"2025-06-04"}', NULL, 1, '未查询到节点信息', '2025-06-04 17:58:58.608521', 33, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65255, '能耗统计分析-成本趋势分析（能源消耗成本）', 0, 'com.zhitan.web.controller.statisticalAnalysis.EnergyTypeAnalysisController.listEnergyCostTrendDetail()', 'GET', 1, 'admin', NULL, '/energyTypeAnalysis/listEnergyCostTrendDetail', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-04","modelCode":"NYCBMX","timeType":"DAY","timeCode":"2025-06-04"}', NULL, 1, '未查询到节点信息', '2025-06-04 17:58:58.608694', 33, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65256, '获取能流图形分析', 0, 'com.zhitan.web.controller.statisticalAnalysis.StatisticsAnalysisController.getFlowCharts()', 'GET', 1, 'admin', NULL, '/statisticsAnalysis/getFlowCharts', '192.168.110.77', '内网IP', '{"energyType":"electric","dataTime":"2025-06-04","modelCode":"EnergyLossModel","queryTime":"2025-06-04","timeType":"DAY"}', NULL, 1, '未查询到模型信息', '2025-06-04 17:59:01.363995', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65257, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 18:06:40.83462', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65258, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/3b66ea59-fd69-4d73-a830-0b5b0b767d80', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 18:06:48.361009', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65259, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/3b66ea59-fd69-4d73-a830-0b5b0b767d80', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-04 18:06:48.946943', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65260, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.setDevice()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/device/3b66ea59-fd69-4d73-a830-0b5b0b767d80', '192.168.110.77', '内网IP', '"3b66ea59-fd69-4d73-a830-0b5b0b767d80" ["fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 18:06:53.296505', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65261, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/3b66ea59-fd69-4d73-a830-0b5b0b767d80/STATISTIC', '192.168.110.77', '内网IP', '"3b66ea59-fd69-4d73-a830-0b5b0b767d80" "STATISTIC" ["a01e5c96-be69-43b6-b0eb-83866d42a869","3e4583cf-8b92-415a-b830-27939a2462e1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 18:06:58.17372', 26, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65262, '设置模型节点关联采集指标', 2, 'com.zhitan.web.controller.model.ModelNodeController.setSettingIndex()', 'POST', 1, 'admin', NULL, '/basicsetting/modelnode/energyIndex/3b66ea59-fd69-4d73-a830-0b5b0b767d80/COLLECT', '192.168.110.77', '内网IP', '"3b66ea59-fd69-4d73-a830-0b5b0b767d80" "COLLECT" ["0394d6ff-0f15-405c-84ab-b72634c2894a","8c89327b-c5ed-46c0-8e84-8225f63facd1"]', '{"msg":"操作成功","code":200}', 0, NULL, '2025-06-04 18:07:03.012956', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65263, '根据时间与点位查询历史监测数据', 2, 'com.zhitan.web.controller.history.HistoryDataTrendController.getHistoricalDataByIndexId()', 'GET', 1, 'admin', NULL, '/dataMonitoring/historyDataTrend/getHistoricalDataByIndexId', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-04 18:00:00","indexId":"0394d6ff-0f15-405c-84ab-b72634c2894a","timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"查询历史监测数据出错!","code":500}', 0, NULL, '2025-06-04 18:08:28.838081', 65, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65266, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[{"code":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","label":"2#电表"}]}', 0, NULL, '2025-06-04 18:08:35.479955', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65267, '根据电表id获取功率因数数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricPowerFactorController.list()', 'GET', 1, 'admin', NULL, '/powerFactorAnalysis/detail', '192.168.110.77', '内网IP', '{"meterId":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"0.00","max":"--","maxTime":"--","min":"--","minTime":"--"},"itemList":[{"timeCode":"00:00","value":"--"},{"timeCode":"01:00","value":"--"},{"timeCode":"02:00","value":"--"},{"timeCode":"03:00","value":"--"},{"timeCode":"04:00","value":"--"},{"timeCode":"05:00","value":"--"},{"timeCode":"06:00","value":"--"},{"timeCode":"07:00","value":"--"},{"timeCode":"08:00","value":"--"},{"timeCode":"09:00","value":"--"},{"timeCode":"10:00","value":"--"},{"timeCode":"11:00","value":"--"},{"timeCode":"12:00","value":"--"},{"timeCode":"13:00","value":"--"},{"timeCode":"14:00","value":"--"},{"timeCode":"15:00","value":"--"},{"timeCode":"16:00","value":"--"},{"timeCode":"17:00","value":"--"},{"timeCode":"18:00","value":"--"},{"timeCode":"19:00","value":"--"},{"timeCode":"20:00","value":"--"},{"timeCode":"21:00","value":"--"},{"timeCode":"22:00","value":"--"},{"timeCode":"23:00","value":"--"}]}}', 0, NULL, '2025-06-04 18:08:35.541087', 44, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65271, '根据电表id获取功率因数数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricPowerFactorController.list()', 'GET', 1, 'admin', NULL, '/powerFactorAnalysis/detail', '192.168.110.77', '内网IP', '{"meterId":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"0.00","max":"--","maxTime":"--","min":"--","minTime":"--"},"itemList":[{"timeCode":"00:00","value":"--"},{"timeCode":"01:00","value":"--"},{"timeCode":"02:00","value":"--"},{"timeCode":"03:00","value":"--"},{"timeCode":"04:00","value":"--"},{"timeCode":"05:00","value":"--"},{"timeCode":"06:00","value":"--"},{"timeCode":"07:00","value":"--"},{"timeCode":"08:00","value":"--"},{"timeCode":"09:00","value":"--"},{"timeCode":"10:00","value":"--"},{"timeCode":"11:00","value":"--"},{"timeCode":"12:00","value":"--"},{"timeCode":"13:00","value":"--"},{"timeCode":"14:00","value":"--"},{"timeCode":"15:00","value":"--"},{"timeCode":"16:00","value":"--"},{"timeCode":"17:00","value":"--"},{"timeCode":"18:00","value":"--"},{"timeCode":"19:00","value":"--"},{"timeCode":"20:00","value":"--"},{"timeCode":"21:00","value":"--"},{"timeCode":"22:00","value":"--"},{"timeCode":"23:00","value":"--"}]}}', 0, NULL, '2025-06-04 18:11:10.391883', 41, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65264, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[{"code":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","label":"2#电表"}]}', 0, NULL, '2025-06-04 18:08:33.27852', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65265, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"meterId":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', NULL, 1, 'Failed to connect to /127.0.0.1:8086', '2025-06-04 18:08:33.295714', 27, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65268, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[{"code":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","label":"2#电表"}]}', 0, NULL, '2025-06-04 18:08:38.369158', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65269, '根据电表id查询三相不平衡数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricThreePhaseController.list()', 'GET', 1, 'admin', NULL, '/threePhaseUnbalanceAnalysis/detail', '192.168.110.77', '内网IP', '{"requestType":"0","meterId":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","timeType":"DAY","timeCode":"2025-06-04","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', NULL, 1, 'Failed to connect to /127.0.0.1:8086', '2025-06-04 18:08:38.40201', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65270, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[{"code":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","label":"2#电表"}]}', 0, NULL, '2025-06-04 18:11:10.331852', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65272, '根据时间与点位查询历史监测数据', 2, 'com.zhitan.web.controller.history.HistoryDataTrendController.getHistoricalDataByIndexId()', 'GET', 1, 'admin', NULL, '/dataMonitoring/historyDataTrend/getHistoricalDataByIndexId', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-09 15:00:00","indexId":"0394d6ff-0f15-405c-84ab-b72634c2894a","timeType":"DAY","timeCode":"2025-06-09","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"查询历史监测数据出错!","code":500}', 0, NULL, '2025-06-09 15:29:48.821612', 39, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65273, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[{"code":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","label":"2#电表"}]}', 0, NULL, '2025-06-09 15:29:52.120238', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65274, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"meterId":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","timeType":"DAY","timeCode":"2025-06-09","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', NULL, 1, 'Failed to connect to /127.0.0.1:8086', '2025-06-09 15:29:52.15019', 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65275, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[{"code":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","label":"2#电表"}]}', 0, NULL, '2025-06-09 15:29:53.971866', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65276, '根据电表id获取功率因数数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricPowerFactorController.list()', 'GET', 1, 'admin', NULL, '/powerFactorAnalysis/detail', '192.168.110.77', '内网IP', '{"meterId":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","timeType":"DAY","timeCode":"2025-06-09","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"0.00","max":"--","maxTime":"--","min":"--","minTime":"--"},"itemList":[{"timeCode":"00:00","value":"--"},{"timeCode":"01:00","value":"--"},{"timeCode":"02:00","value":"--"},{"timeCode":"03:00","value":"--"},{"timeCode":"04:00","value":"--"},{"timeCode":"05:00","value":"--"},{"timeCode":"06:00","value":"--"},{"timeCode":"07:00","value":"--"},{"timeCode":"08:00","value":"--"},{"timeCode":"09:00","value":"--"},{"timeCode":"10:00","value":"--"},{"timeCode":"11:00","value":"--"},{"timeCode":"12:00","value":"--"},{"timeCode":"13:00","value":"--"},{"timeCode":"14:00","value":"--"},{"timeCode":"15:00","value":"--"},{"timeCode":"16:00","value":"--"},{"timeCode":"17:00","value":"--"},{"timeCode":"18:00","value":"--"},{"timeCode":"19:00","value":"--"},{"timeCode":"20:00","value":"--"},{"timeCode":"21:00","value":"--"},{"timeCode":"22:00","value":"--"},{"timeCode":"23:00","value":"--"}]}}', 0, NULL, '2025-06-09 15:29:54.049707', 41, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65277, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[{"code":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","label":"2#电表"}]}', 0, NULL, '2025-06-09 15:30:29.386138', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65278, '根据电表id查询三相不平衡数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricThreePhaseController.list()', 'GET', 1, 'admin', NULL, '/threePhaseUnbalanceAnalysis/detail', '192.168.110.77', '内网IP', '{"requestType":"0","meterId":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","timeType":"DAY","timeCode":"2025-06-09","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', NULL, 1, 'Failed to connect to /127.0.0.1:8086', '2025-06-09 15:30:29.432342', 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65279, '根据时间与点位查询历史监测数据', 2, 'com.zhitan.web.controller.history.HistoryDataTrendController.getHistoricalDataByIndexId()', 'GET', 1, 'admin', NULL, '/dataMonitoring/historyDataTrend/getHistoricalDataByIndexId', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-09 15:00:00","indexId":"0394d6ff-0f15-405c-84ab-b72634c2894a","timeType":"DAY","timeCode":"2025-06-09","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"查询历史监测数据出错!","code":500}', 0, NULL, '2025-06-09 15:38:13.832195', 56, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65280, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[{"code":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","label":"2#电表"}]}', 0, NULL, '2025-06-09 15:38:16.649008', 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65281, '根据电表id获取负荷分析数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.list()', 'GET', 1, 'admin', NULL, '/loadAnalysis/detail', '192.168.110.77', '内网IP', '{"meterId":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","timeType":"DAY","timeCode":"2025-06-09","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', NULL, 1, 'IOException reading next record: java.io.IOException: (line 1) invalid char between encapsulated token and delimiter', '2025-06-09 15:38:16.69511', 29, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65282, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[{"code":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","label":"2#电表"}]}', 0, NULL, '2025-06-09 15:38:48.753758', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65283, '根据电表id获取功率因数数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricPowerFactorController.list()', 'GET', 1, 'admin', NULL, '/powerFactorAnalysis/detail', '192.168.110.77', '内网IP', '{"meterId":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","timeType":"DAY","timeCode":"2025-06-09","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":{"detail":{"avg":"0.00","max":"--","maxTime":"--","min":"--","minTime":"--"},"itemList":[{"timeCode":"00:00","value":"--"},{"timeCode":"01:00","value":"--"},{"timeCode":"02:00","value":"--"},{"timeCode":"03:00","value":"--"},{"timeCode":"04:00","value":"--"},{"timeCode":"05:00","value":"--"},{"timeCode":"06:00","value":"--"},{"timeCode":"07:00","value":"--"},{"timeCode":"08:00","value":"--"},{"timeCode":"09:00","value":"--"},{"timeCode":"10:00","value":"--"},{"timeCode":"11:00","value":"--"},{"timeCode":"12:00","value":"--"},{"timeCode":"13:00","value":"--"},{"timeCode":"14:00","value":"--"},{"timeCode":"15:00","value":"--"},{"timeCode":"16:00","value":"--"},{"timeCode":"17:00","value":"--"},{"timeCode":"18:00","value":"--"},{"timeCode":"19:00","value":"--"},{"timeCode":"20:00","value":"--"},{"timeCode":"21:00","value":"--"},{"timeCode":"22:00","value":"--"},{"timeCode":"23:00","value":"--"}]}}', 0, NULL, '2025-06-09 15:38:49.032435', 255, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65285, '根据电表id查询三相不平衡数据', 0, 'com.zhitan.web.controller.energyMonitor.ElectricThreePhaseController.list()', 'GET', 1, 'admin', NULL, '/threePhaseUnbalanceAnalysis/detail', '192.168.110.77', '内网IP', '{"requestType":"0","meterId":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","timeType":"DAY","timeCode":"2025-06-09","nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', NULL, 1, 'IOException reading next record: java.io.IOException: (line 1) invalid char between encapsulated token and delimiter', '2025-06-09 15:38:51.277034', 34, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65287, '能耗统计分析-成本趋势分析（能源消耗成本）', 0, 'com.zhitan.web.controller.statisticalAnalysis.EnergyTypeAnalysisController.listEnergyCostTrendDetail()', 'GET', 1, 'admin', NULL, '/energyTypeAnalysis/listEnergyCostTrendDetail', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-09","modelCode":"NYCBMX","timeType":"DAY","timeCode":"2025-06-09"}', NULL, 1, '未查询到节点信息', '2025-06-09 15:39:16.703912', 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65288, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/20fc4a28-2c22-41f6-b49f-91754e7ecee9', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"code":"222180009660","id":"f15fc88f-96e4-4e80-9e8e-0a3a33eb8690","meterName":"1#电表","params":{},"txflage":false},{"code":"222180009639","id":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","meterName":"2#电表","params":{},"txflage":false}]}', 0, NULL, '2025-06-09 15:39:40.657866', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65289, '设置模型节点关联设备', 2, 'com.zhitan.web.controller.model.ModelNodeController.getSettingDevice()', 'GET', 1, 'admin', NULL, '/basicsetting/modelnode/device/76307d81-5e3c-461b-bbf0-8e279dd58d40', '192.168.110.77', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[]}', 0, NULL, '2025-06-09 15:39:42.170855', 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65284, '获取节点下所有电表', 0, 'com.zhitan.web.controller.energyMonitor.ElectricLoadController.listElectricMeter()', 'GET', 1, 'admin', NULL, '/loadAnalysis/listElectricMeter', '192.168.110.77', '内网IP', '{"nodeId":"3b66ea59-fd69-4d73-a830-0b5b0b767d80"}', '{"msg":"操作成功","code":200,"data":[{"code":"fc0ff13e-8cd3-4e3f-b3e1-bf2d686a3e68","label":"2#电表"}]}', 0, NULL, '2025-06-09 15:38:51.240528', 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."sys_oper_log" VALUES (65286, '能耗统计分析-成本趋势分析（能源消耗成本）- 获取表格列表数据', 0, 'com.zhitan.web.controller.statisticalAnalysis.EnergyTypeAnalysisController.listEnergyCostTrend()', 'GET', 1, 'admin', NULL, '/energyTypeAnalysis/listEnergyCostTrend', '192.168.110.77', '内网IP', '{"dataTime":"2025-06-09","modelCode":"NYCBMX","timeType":"DAY","timeCode":"2025-06-09"}', NULL, 1, '未查询到节点信息', '2025-06-09 15:39:16.703283', 19, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_post";
CREATE TABLE "public"."sys_post" (
  "post_id" int8 NOT NULL DEFAULT nextval('post_id_seq'::regclass),
  "post_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "post_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "post_sort" int4 NOT NULL,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_post"."post_id" IS '岗位ID';
COMMENT ON COLUMN "public"."sys_post"."post_code" IS '岗位编码';
COMMENT ON COLUMN "public"."sys_post"."post_name" IS '岗位名称';
COMMENT ON COLUMN "public"."sys_post"."post_sort" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_post"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_post"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_post"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_post"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_post"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_post"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_post" IS '岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_price
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_price";
CREATE TABLE "public"."sys_price" (
  "objectid" int4,
  "objecttype" int4,
  "price" numeric(18,4),
  "execdate" date,
  "opr_man" varchar(20) COLLATE "pg_catalog"."default",
  "opr_time" timestamp(0),
  "mod_man" varchar(220) COLLATE "pg_catalog"."default",
  "mod_time" timestamp(0),
  "note" varchar(100) COLLATE "pg_catalog"."default",
  "priceid" int4 NOT NULL DEFAULT nextval('sys_price_seq'::regclass)
)
;
COMMENT ON COLUMN "public"."sys_price"."objectid" IS 'ObjectID_对象ID：
　　能源ID、原料ID或产品ID
';
COMMENT ON COLUMN "public"."sys_price"."objecttype" IS 'ObjectType_对象类型
　　1=能源(Energy表)；2=原料(Material表)；3=产品(Product表)';
COMMENT ON COLUMN "public"."sys_price"."price" IS '单价';
COMMENT ON COLUMN "public"."sys_price"."execdate" IS '执行日期';
COMMENT ON COLUMN "public"."sys_price"."opr_man" IS '操作人';
COMMENT ON COLUMN "public"."sys_price"."opr_time" IS '操作时间';
COMMENT ON COLUMN "public"."sys_price"."mod_man" IS '更新人';
COMMENT ON COLUMN "public"."sys_price"."mod_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_price"."note" IS '备注';
COMMENT ON TABLE "public"."sys_price" IS '单价设置';

-- ----------------------------
-- Records of sys_price
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "role_id" int8 NOT NULL DEFAULT nextval('role_id_seq'::regclass),
  "role_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "role_key" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "role_sort" int4 NOT NULL,
  "data_scope" varchar(16) COLLATE "pg_catalog"."default" DEFAULT 1,
  "status" varchar(16) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "del_flag" int2 DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "menu_check_strictly" varchar(16) COLLATE "pg_catalog"."default",
  "dept_check_strictly" varchar(16) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_role"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role"."role_name" IS '角色名称';
COMMENT ON COLUMN "public"."sys_role"."role_key" IS '角色权限字符串';
COMMENT ON COLUMN "public"."sys_role"."role_sort" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_role"."data_scope" IS '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）';
COMMENT ON COLUMN "public"."sys_role"."status" IS '角色状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_role"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_role"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_role"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_role"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_role"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_role"."menu_check_strictly" IS '菜单树选择项是否关联显示';
COMMENT ON COLUMN "public"."sys_role"."dept_check_strictly" IS '部门树选择项是否关联显示';
COMMENT ON TABLE "public"."sys_role" IS '角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "public"."sys_role" VALUES (32, '管理员', 'admin', 0, '1', '0', 0, 'admin', '2024-11-15 14:38:32.746352', 'admin', '2025-04-13 21:26:10.087481', NULL, 'true', 'true');
INSERT INTO "public"."sys_role" VALUES (33, '第三方登录', 'zonghezhili', 2, '1', '0', 2, 'admin', '2024-12-18 15:13:18.475765', 'admin', '2025-02-07 15:00:14.739127', NULL, 'true', 'true');
INSERT INTO "public"."sys_role" VALUES (37, '体验用户', 'guest', 0, '1', '0', 2, 'admin', '2025-01-09 19:01:02.309464', 'admin', '2025-02-13 17:43:58.26097', NULL, 'true', 'true');
INSERT INTO "public"."sys_role" VALUES (38, '测试', 'test', 4, '1', '0', 2, 'admin', '2025-03-17 11:55:52.930536', NULL, NULL, NULL, 'true', 'true');
INSERT INTO "public"."sys_role" VALUES (39, '实时数据分析', 'realtime', 0, '1', '0', 2, 'admin', '2025-03-17 13:34:35.579183', NULL, NULL, NULL, 'true', 'true');
INSERT INTO "public"."sys_role" VALUES (40, '体验用户', 'guestUser', 2, '1', '0', 0, 'admin', '2025-03-25 18:10:48.990639', 'admin', '2025-04-14 14:36:51.823263', NULL, 'true', 'true');
INSERT INTO "public"."sys_role" VALUES (41, '碳元界', 'tanyuanjie', 3, '1', '0', 0, 'admin', '2025-04-29 14:50:13.873647', 'admin', '2025-04-30 11:08:59.211436', NULL, 'true', 'true');
INSERT INTO "public"."sys_role" VALUES (42, '能源管理', '1', 4, '1', '0', 0, 'admin', '2025-05-08 15:49:36.718427', NULL, NULL, NULL, 'true', 'true');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_dept";
CREATE TABLE "public"."sys_role_dept" (
  "role_id" int8 NOT NULL,
  "dept_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_dept"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role_dept"."dept_id" IS '部门ID';
COMMENT ON TABLE "public"."sys_role_dept" IS '角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_menu";
CREATE TABLE "public"."sys_role_menu" (
  "role_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_menu"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role_menu"."menu_id" IS '菜单ID';
COMMENT ON TABLE "public"."sys_role_menu" IS '角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO "public"."sys_role_menu" VALUES (32, 1);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2);
INSERT INTO "public"."sys_role_menu" VALUES (32, 3);
INSERT INTO "public"."sys_role_menu" VALUES (32, 24);
INSERT INTO "public"."sys_role_menu" VALUES (32, 49);
INSERT INTO "public"."sys_role_menu" VALUES (32, 51);
INSERT INTO "public"."sys_role_menu" VALUES (32, 52);
INSERT INTO "public"."sys_role_menu" VALUES (32, 53);
INSERT INTO "public"."sys_role_menu" VALUES (32, 54);
INSERT INTO "public"."sys_role_menu" VALUES (32, 55);
INSERT INTO "public"."sys_role_menu" VALUES (32, 100);
INSERT INTO "public"."sys_role_menu" VALUES (32, 101);
INSERT INTO "public"."sys_role_menu" VALUES (32, 102);
INSERT INTO "public"."sys_role_menu" VALUES (32, 103);
INSERT INTO "public"."sys_role_menu" VALUES (32, 104);
INSERT INTO "public"."sys_role_menu" VALUES (32, 105);
INSERT INTO "public"."sys_role_menu" VALUES (32, 106);
INSERT INTO "public"."sys_role_menu" VALUES (32, 107);
INSERT INTO "public"."sys_role_menu" VALUES (32, 108);
INSERT INTO "public"."sys_role_menu" VALUES (32, 109);
INSERT INTO "public"."sys_role_menu" VALUES (32, 110);
INSERT INTO "public"."sys_role_menu" VALUES (32, 111);
INSERT INTO "public"."sys_role_menu" VALUES (32, 112);
INSERT INTO "public"."sys_role_menu" VALUES (32, 113);
INSERT INTO "public"."sys_role_menu" VALUES (32, 114);
INSERT INTO "public"."sys_role_menu" VALUES (32, 115);
INSERT INTO "public"."sys_role_menu" VALUES (32, 500);
INSERT INTO "public"."sys_role_menu" VALUES (32, 501);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1001);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1002);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1003);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1004);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1005);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1006);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1007);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1008);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1009);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1010);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1011);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1012);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1013);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1014);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1015);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1016);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1017);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1018);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1019);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1020);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1021);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1022);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1023);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1024);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1025);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1026);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1027);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1028);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1029);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1030);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1031);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1032);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1033);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1034);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1035);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1036);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1037);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1038);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1039);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1040);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1041);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1042);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1043);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1044);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1045);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1046);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1047);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1048);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1049);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1050);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1051);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1052);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1053);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1054);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1055);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1056);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1057);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1058);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1059);
INSERT INTO "public"."sys_role_menu" VALUES (32, 1060);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2022);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2023);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2024);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2025);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2026);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2027);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2063);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2064);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2065);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2066);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2067);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2070);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2074);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2075);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2076);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2077);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2078);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2080);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2125);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2126);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2127);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2128);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2129);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2130);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2184);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2187);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2188);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2189);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2190);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2191);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2192);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2193);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2194);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2198);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2200);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2202);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2255);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2274);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2532);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2533);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2534);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2535);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2539);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2540);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2541);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2542);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2544);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2545);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2546);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2547);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2548);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2549);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2550);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2551);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2555);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2556);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2557);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2558);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2559);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2560);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2561);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2562);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2563);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2564);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2565);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2566);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2567);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2568);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2569);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2571);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2572);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2582);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2588);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2589);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2590);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2591);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2592);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2595);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2596);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2598);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2599);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2639);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2641);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2642);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2644);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2645);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2646);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2647);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2657);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2658);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2659);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2660);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2661);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2662);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2663);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2664);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2665);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2666);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2667);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2670);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2671);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2675);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2676);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2677);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2678);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2679);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2680);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2681);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2682);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2683);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2688);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2689);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2690);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2691);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2692);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2694);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2695);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2696);
INSERT INTO "public"."sys_role_menu" VALUES (32, 2697);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2187);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2188);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2190);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2191);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2192);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2194);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2200);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2202);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2533);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2534);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2535);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2539);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2540);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2545);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2551);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2559);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2562);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2563);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2564);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2565);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2566);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2567);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2568);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2569);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2571);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2582);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2591);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2595);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2596);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2644);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2645);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2646);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2647);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2657);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2658);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2659);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2660);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2662);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2663);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2664);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2665);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2666);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2667);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2668);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2670);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2671);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2675);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2676);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2677);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2678);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2679);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2680);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2681);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2682);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2683);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2691);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2692);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2694);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2695);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2696);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2697);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2698);
INSERT INTO "public"."sys_role_menu" VALUES (40, 2699);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2187);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2188);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2190);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2191);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2192);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2194);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2198);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2200);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2202);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2532);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2533);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2534);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2535);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2544);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2545);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2546);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2549);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2550);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2551);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2559);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2562);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2563);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2564);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2565);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2566);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2567);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2568);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2569);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2571);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2572);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2582);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2590);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2594);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2595);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2596);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2597);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2598);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2644);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2645);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2646);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2647);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2657);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2658);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2659);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2660);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2662);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2663);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2664);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2665);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2666);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2667);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2668);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2670);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2671);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2672);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2674);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2675);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2676);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2677);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2678);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2679);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2680);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2681);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2682);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2683);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2688);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2689);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2690);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2691);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2692);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2694);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2695);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2698);
INSERT INTO "public"."sys_role_menu" VALUES (41, 2699);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2);
INSERT INTO "public"."sys_role_menu" VALUES (42, 3);
INSERT INTO "public"."sys_role_menu" VALUES (42, 24);
INSERT INTO "public"."sys_role_menu" VALUES (42, 49);
INSERT INTO "public"."sys_role_menu" VALUES (42, 51);
INSERT INTO "public"."sys_role_menu" VALUES (42, 52);
INSERT INTO "public"."sys_role_menu" VALUES (42, 53);
INSERT INTO "public"."sys_role_menu" VALUES (42, 54);
INSERT INTO "public"."sys_role_menu" VALUES (42, 55);
INSERT INTO "public"."sys_role_menu" VALUES (42, 100);
INSERT INTO "public"."sys_role_menu" VALUES (42, 101);
INSERT INTO "public"."sys_role_menu" VALUES (42, 102);
INSERT INTO "public"."sys_role_menu" VALUES (42, 103);
INSERT INTO "public"."sys_role_menu" VALUES (42, 104);
INSERT INTO "public"."sys_role_menu" VALUES (42, 105);
INSERT INTO "public"."sys_role_menu" VALUES (42, 106);
INSERT INTO "public"."sys_role_menu" VALUES (42, 107);
INSERT INTO "public"."sys_role_menu" VALUES (42, 108);
INSERT INTO "public"."sys_role_menu" VALUES (42, 109);
INSERT INTO "public"."sys_role_menu" VALUES (42, 110);
INSERT INTO "public"."sys_role_menu" VALUES (42, 111);
INSERT INTO "public"."sys_role_menu" VALUES (42, 112);
INSERT INTO "public"."sys_role_menu" VALUES (42, 113);
INSERT INTO "public"."sys_role_menu" VALUES (42, 114);
INSERT INTO "public"."sys_role_menu" VALUES (42, 115);
INSERT INTO "public"."sys_role_menu" VALUES (42, 500);
INSERT INTO "public"."sys_role_menu" VALUES (42, 501);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1001);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1002);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1003);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1004);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1005);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1006);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1007);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1008);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1009);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1010);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1011);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1012);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1013);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1014);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1015);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1016);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1017);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1018);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1019);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1020);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1021);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1022);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1023);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1024);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1025);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1026);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1027);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1028);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1029);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1030);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1031);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1032);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1033);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1034);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1035);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1036);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1037);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1038);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1039);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1040);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1041);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1042);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1043);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1044);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1045);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1046);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1047);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1048);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1049);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1050);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1051);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1052);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1053);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1054);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1055);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1056);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1057);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1058);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1059);
INSERT INTO "public"."sys_role_menu" VALUES (42, 1060);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2022);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2023);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2024);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2025);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2026);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2027);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2063);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2064);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2065);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2066);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2067);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2070);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2074);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2075);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2076);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2077);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2078);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2080);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2125);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2126);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2127);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2128);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2129);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2130);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2184);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2187);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2188);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2189);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2190);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2191);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2192);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2193);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2194);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2198);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2200);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2202);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2255);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2274);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2532);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2533);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2534);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2535);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2539);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2540);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2541);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2542);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2544);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2545);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2546);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2547);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2548);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2549);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2550);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2551);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2555);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2556);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2557);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2558);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2559);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2560);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2561);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2562);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2563);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2564);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2565);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2566);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2567);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2568);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2569);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2571);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2572);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2582);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2588);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2589);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2590);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2591);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2592);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2594);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2595);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2596);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2597);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2598);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2599);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2638);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2639);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2641);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2642);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2644);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2645);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2646);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2647);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2651);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2652);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2653);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2657);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2658);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2659);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2660);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2661);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2662);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2663);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2664);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2665);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2666);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2667);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2668);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2669);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2670);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2671);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2672);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2674);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2675);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2676);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2677);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2678);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2679);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2680);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2681);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2682);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2683);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2688);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2689);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2690);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2691);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2692);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2694);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2695);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2698);
INSERT INTO "public"."sys_role_menu" VALUES (42, 2699);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "user_id" int8 NOT NULL DEFAULT nextval('user_id_seq'::regclass),
  "dept_id" int8,
  "user_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "nick_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "user_type" varchar(2) COLLATE "pg_catalog"."default" DEFAULT '00'::character varying,
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "phone_number" varchar(11) COLLATE "pg_catalog"."default",
  "sex" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "avatar" varchar(100) COLLATE "pg_catalog"."default",
  "password" varchar(100) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "login_ip" varchar(50) COLLATE "pg_catalog"."default",
  "login_date" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "single_user" varchar(32) COLLATE "pg_catalog"."default",
  "trial_expire_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_user"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user"."dept_id" IS '部门ID';
COMMENT ON COLUMN "public"."sys_user"."user_name" IS '用户账号';
COMMENT ON COLUMN "public"."sys_user"."nick_name" IS '用户昵称';
COMMENT ON COLUMN "public"."sys_user"."user_type" IS '用户类型（00系统用户）';
COMMENT ON COLUMN "public"."sys_user"."email" IS '用户邮箱';
COMMENT ON COLUMN "public"."sys_user"."phone_number" IS '手机号码';
COMMENT ON COLUMN "public"."sys_user"."sex" IS '用户性别（0男 1女 2未知）';
COMMENT ON COLUMN "public"."sys_user"."avatar" IS '头像地址';
COMMENT ON COLUMN "public"."sys_user"."password" IS '密码';
COMMENT ON COLUMN "public"."sys_user"."status" IS '帐号状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_user"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_user"."login_ip" IS '最后登陆IP';
COMMENT ON COLUMN "public"."sys_user"."login_date" IS '最后登陆时间';
COMMENT ON COLUMN "public"."sys_user"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_user"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_user"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_user"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_user"."single_user" IS '第三方登录id';
COMMENT ON COLUMN "public"."sys_user"."trial_expire_time" IS '体验账户到期时间';
COMMENT ON TABLE "public"."sys_user" IS '用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES (24, NULL, 'guestUser', '体验用户', '00', NULL, NULL, '0', '/profile/avatar/2025/02/25/avatar_20250225094402A004.png', '$2a$10$60J16xa47M7KCdz8xJ7Ak.SDbi0zQkabDcNgpO3bzLITZVgdJc2t6', '0', '0', '127.0.0.1', '2025-06-03 14:12:03.409', 'admin', '2024-12-04 10:44:29.111243', 'admin', '2025-06-03 14:12:04.936651', NULL, NULL, NULL);
INSERT INTO "public"."sys_user" VALUES (1, 103, 'admin', '管理员', '00', '', '', '0', '/profile/avatar/2025/02/10/微信图片_20250117220435_20250210160249A009.png', '$2a$10$60J16xa47M7KCdz8xJ7Ak.SDbi0zQkabDcNgpO3bzLITZVgdJc2t6', '0', '0', '192.168.110.77', '2025-06-09 15:29:28.736', 'admin', '2018-03-16 11:33:00', 'admin', '2025-06-09 15:29:29.731664', '管理员', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_post";
CREATE TABLE "public"."sys_user_post" (
  "user_id" int8 NOT NULL,
  "post_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_post"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user_post"."post_id" IS '岗位ID';
COMMENT ON TABLE "public"."sys_user_post" IS '用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_role";
CREATE TABLE "public"."sys_user_role" (
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_role"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user_role"."role_id" IS '角色ID';
COMMENT ON TABLE "public"."sys_user_role" IS '用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "public"."sys_user_role" VALUES (24, 40);
INSERT INTO "public"."sys_user_role" VALUES (30, 40);
INSERT INTO "public"."sys_user_role" VALUES (36, 40);
INSERT INTO "public"."sys_user_role" VALUES (38, 40);
INSERT INTO "public"."sys_user_role" VALUES (39, 40);
INSERT INTO "public"."sys_user_role" VALUES (40, 40);
INSERT INTO "public"."sys_user_role" VALUES (41, 40);
INSERT INTO "public"."sys_user_role" VALUES (42, 40);
INSERT INTO "public"."sys_user_role" VALUES (43, 40);
INSERT INTO "public"."sys_user_role" VALUES (44, 40);
INSERT INTO "public"."sys_user_role" VALUES (46, 40);
INSERT INTO "public"."sys_user_role" VALUES (47, 40);
INSERT INTO "public"."sys_user_role" VALUES (48, 40);
INSERT INTO "public"."sys_user_role" VALUES (49, 40);
INSERT INTO "public"."sys_user_role" VALUES (50, 40);
INSERT INTO "public"."sys_user_role" VALUES (51, 40);
INSERT INTO "public"."sys_user_role" VALUES (52, 40);
INSERT INTO "public"."sys_user_role" VALUES (53, 40);
INSERT INTO "public"."sys_user_role" VALUES (54, 40);
INSERT INTO "public"."sys_user_role" VALUES (55, 40);
INSERT INTO "public"."sys_user_role" VALUES (56, 40);
INSERT INTO "public"."sys_user_role" VALUES (57, 40);
INSERT INTO "public"."sys_user_role" VALUES (58, 40);
INSERT INTO "public"."sys_user_role" VALUES (59, 41);
INSERT INTO "public"."sys_user_role" VALUES (60, 40);
INSERT INTO "public"."sys_user_role" VALUES (61, 40);
INSERT INTO "public"."sys_user_role" VALUES (62, 40);
INSERT INTO "public"."sys_user_role" VALUES (63, 40);
INSERT INTO "public"."sys_user_role" VALUES (64, 40);
INSERT INTO "public"."sys_user_role" VALUES (65, 42);
INSERT INTO "public"."sys_user_role" VALUES (66, 40);
INSERT INTO "public"."sys_user_role" VALUES (67, 40);
INSERT INTO "public"."sys_user_role" VALUES (68, 40);
INSERT INTO "public"."sys_user_role" VALUES (69, 40);
INSERT INTO "public"."sys_user_role" VALUES (70, 40);
INSERT INTO "public"."sys_user_role" VALUES (71, 40);
INSERT INTO "public"."sys_user_role" VALUES (72, 40);
INSERT INTO "public"."sys_user_role" VALUES (73, 40);
INSERT INTO "public"."sys_user_role" VALUES (74, 40);
INSERT INTO "public"."sys_user_role" VALUES (75, 40);
INSERT INTO "public"."sys_user_role" VALUES (76, 40);
INSERT INTO "public"."sys_user_role" VALUES (77, 40);
INSERT INTO "public"."sys_user_role" VALUES (78, 40);
INSERT INTO "public"."sys_user_role" VALUES (79, 40);
INSERT INTO "public"."sys_user_role" VALUES (80, 40);
INSERT INTO "public"."sys_user_role" VALUES (81, 40);
INSERT INTO "public"."sys_user_role" VALUES (82, 40);
INSERT INTO "public"."sys_user_role" VALUES (83, 40);
INSERT INTO "public"."sys_user_role" VALUES (84, 40);
INSERT INTO "public"."sys_user_role" VALUES (85, 40);
INSERT INTO "public"."sys_user_role" VALUES (86, 40);
INSERT INTO "public"."sys_user_role" VALUES (87, 40);
INSERT INTO "public"."sys_user_role" VALUES (88, 40);
INSERT INTO "public"."sys_user_role" VALUES (89, 40);
INSERT INTO "public"."sys_user_role" VALUES (90, 40);
INSERT INTO "public"."sys_user_role" VALUES (91, 40);
INSERT INTO "public"."sys_user_role" VALUES (92, 40);
INSERT INTO "public"."sys_user_role" VALUES (93, 40);
INSERT INTO "public"."sys_user_role" VALUES (94, 40);
INSERT INTO "public"."sys_user_role" VALUES (95, 40);
INSERT INTO "public"."sys_user_role" VALUES (96, 40);
INSERT INTO "public"."sys_user_role" VALUES (97, 40);
INSERT INTO "public"."sys_user_role" VALUES (98, 40);
INSERT INTO "public"."sys_user_role" VALUES (99, 40);
INSERT INTO "public"."sys_user_role" VALUES (100, 40);
INSERT INTO "public"."sys_user_role" VALUES (101, 40);
INSERT INTO "public"."sys_user_role" VALUES (102, 40);
INSERT INTO "public"."sys_user_role" VALUES (103, 40);
INSERT INTO "public"."sys_user_role" VALUES (104, 40);
INSERT INTO "public"."sys_user_role" VALUES (105, 40);
INSERT INTO "public"."sys_user_role" VALUES (106, 40);
INSERT INTO "public"."sys_user_role" VALUES (107, 40);
INSERT INTO "public"."sys_user_role" VALUES (108, 40);
INSERT INTO "public"."sys_user_role" VALUES (109, 40);
INSERT INTO "public"."sys_user_role" VALUES (110, 40);
INSERT INTO "public"."sys_user_role" VALUES (111, 40);
INSERT INTO "public"."sys_user_role" VALUES (112, 40);
INSERT INTO "public"."sys_user_role" VALUES (113, 40);
INSERT INTO "public"."sys_user_role" VALUES (114, 40);
INSERT INTO "public"."sys_user_role" VALUES (115, 40);
INSERT INTO "public"."sys_user_role" VALUES (116, 40);
INSERT INTO "public"."sys_user_role" VALUES (117, 40);
INSERT INTO "public"."sys_user_role" VALUES (118, 40);
INSERT INTO "public"."sys_user_role" VALUES (119, 40);
INSERT INTO "public"."sys_user_role" VALUES (120, 40);
INSERT INTO "public"."sys_user_role" VALUES (121, 40);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."column_id_seq"', 823, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."config_id_seq"', 15, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."dept_id_seq"', 122, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."dict_code_seq"', 358, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."dict_id_seq"', 67, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."equip_id_seq"', 1963, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."info_id_seq"', 9760, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."job_id_seq"', 5, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."job_log_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."menu_id_seq"', 2683, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."notice_id_seq"', 11, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."oper_id_seq"', 65289, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."post_id_seq"', 22, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."product_output_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."role_id_seq"', 39, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."student_id_seq"', 38, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sysEquip_id"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_enerclass_seq"', 224, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_enercoefficient_seq"', 200, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_energy_seq"', 44, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_price_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_product_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."table_id_seq"', 93, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."user_id_seq"', 29, true);

-- ----------------------------
-- Primary Key structure for table alarm_history
-- ----------------------------
ALTER TABLE "public"."alarm_history" ADD CONSTRAINT "history_alarm_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table alarm_limit_type
-- ----------------------------
ALTER TABLE "public"."alarm_limit_type" ADD CONSTRAINT "limit_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table alarm_realtime
-- ----------------------------
ALTER TABLE "public"."alarm_realtime" ADD CONSTRAINT "history_alarm_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table benchmark
-- ----------------------------
ALTER TABLE "public"."benchmark" ADD CONSTRAINT "energy_benchmark_manage_id" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cost_price_relevancy
-- ----------------------------
ALTER TABLE "public"."cost_price_relevancy" ADD CONSTRAINT "cost_price_tactics_copy1_pkey1" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cost_price_tactics
-- ----------------------------
ALTER TABLE "public"."cost_price_tactics" ADD CONSTRAINT "cost_electricity_input_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cost_price_tactics_item
-- ----------------------------
ALTER TABLE "public"."cost_price_tactics_item" ADD CONSTRAINT "cost_price_tactics_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table data_auth_role
-- ----------------------------
ALTER TABLE "public"."data_auth_role" ADD CONSTRAINT "data_auth_role_pkey" PRIMARY KEY ("role_id", "node_id");

-- ----------------------------
-- Primary Key structure for table data_auth_user
-- ----------------------------
ALTER TABLE "public"."data_auth_user" ADD CONSTRAINT "data_auth_user_pkey" PRIMARY KEY ("user_id", "node_id");

-- ----------------------------
-- Primary Key structure for table device
-- ----------------------------
ALTER TABLE "public"."device" ADD CONSTRAINT "facility_ archives_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table device_annex
-- ----------------------------
ALTER TABLE "public"."device_annex" ADD CONSTRAINT "facility_annex_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table energy_indicators
-- ----------------------------
ALTER TABLE "public"."energy_indicators" ADD CONSTRAINT "energy_indicators_pkey" PRIMARY KEY ("energy_indicators_id");

-- ----------------------------
-- Primary Key structure for table energy_saving_program
-- ----------------------------
ALTER TABLE "public"."energy_saving_program" ADD CONSTRAINT "energy_saving_program_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table energy_statistics
-- ----------------------------
ALTER TABLE "public"."energy_statistics" ADD CONSTRAINT "comprehensiveStatistics_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table energy_used
-- ----------------------------
CREATE UNIQUE INDEX "idx1" ON "public"."energy_used" USING btree (
  "point_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "time_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "idx2" ON "public"."energy_used" USING btree (
  "point_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "time_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "data_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table energy_used
-- ----------------------------
ALTER TABLE "public"."energy_used" ADD CONSTRAINT "data_item_pkey" PRIMARY KEY ("point_id", "time_code");

-- ----------------------------
-- Primary Key structure for table energy_used_electricity
-- ----------------------------
ALTER TABLE "public"."energy_used_electricity" ADD CONSTRAINT "electricity_data_item_pkey" PRIMARY KEY ("index_id", "time_code", "electricity_type");

-- ----------------------------
-- Primary Key structure for table gateway_setting
-- ----------------------------
ALTER TABLE "public"."gateway_setting" ADD CONSTRAINT "gateway_setting_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table gen_table
-- ----------------------------
ALTER TABLE "public"."gen_table" ADD CONSTRAINT "gen_table_pkey" PRIMARY KEY ("table_id");

-- ----------------------------
-- Primary Key structure for table gen_table_column
-- ----------------------------
ALTER TABLE "public"."gen_table_column" ADD CONSTRAINT "gen_table_column_pkey" PRIMARY KEY ("column_id");

-- ----------------------------
-- Primary Key structure for table input_electricity_cost
-- ----------------------------
ALTER TABLE "public"."input_electricity_cost" ADD CONSTRAINT "cost_electricity_input_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table knowledge_base
-- ----------------------------
ALTER TABLE "public"."knowledge_base" ADD CONSTRAINT "knowledge_base_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table knowledge_base_file
-- ----------------------------
ALTER TABLE "public"."knowledge_base_file" ADD CONSTRAINT "knowledge_base_file_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table meter
-- ----------------------------
ALTER TABLE "public"."meter" ADD CONSTRAINT "uniquecode" UNIQUE ("code");
COMMENT ON CONSTRAINT "uniquecode" ON "public"."meter" IS '编码唯一约束';

-- ----------------------------
-- Primary Key structure for table meter
-- ----------------------------
ALTER TABLE "public"."meter" ADD CONSTRAINT "meter_implement_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table meter_annex
-- ----------------------------
ALTER TABLE "public"."meter_annex" ADD CONSTRAINT "meter_annex_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table meter_point
-- ----------------------------
CREATE INDEX "code" ON "public"."meter_point" USING btree (
  "code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table meter_point
-- ----------------------------
ALTER TABLE "public"."meter_point" ADD CONSTRAINT "index_info_pkey" PRIMARY KEY ("point_id");

-- ----------------------------
-- Primary Key structure for table model
-- ----------------------------
ALTER TABLE "public"."model" ADD CONSTRAINT "model_info_pkey" PRIMARY KEY ("model_code");

-- ----------------------------
-- Primary Key structure for table model_node
-- ----------------------------
ALTER TABLE "public"."model_node" ADD CONSTRAINT "model_node_copy2_pkey" PRIMARY KEY ("node_id");

-- ----------------------------
-- Primary Key structure for table node_device
-- ----------------------------
ALTER TABLE "public"."node_device" ADD CONSTRAINT "node_device_pkey" PRIMARY KEY ("node_id", "device_id");

-- ----------------------------
-- Primary Key structure for table node_energy
-- ----------------------------
ALTER TABLE "public"."node_energy" ADD CONSTRAINT "node_device_copy1_pkey" PRIMARY KEY ("node_id", "energy_id");

-- ----------------------------
-- Primary Key structure for table node_point
-- ----------------------------
ALTER TABLE "public"."node_point" ADD CONSTRAINT "node_index_pkey" PRIMARY KEY ("node_id", "point_id");

-- ----------------------------
-- Primary Key structure for table node_product
-- ----------------------------
ALTER TABLE "public"."node_product" ADD CONSTRAINT "node_energy_copy2_pkey" PRIMARY KEY ("node_id", "product_id");

-- ----------------------------
-- Primary Key structure for table policy
-- ----------------------------
ALTER TABLE "public"."policy" ADD CONSTRAINT "policies_regulations_management_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table power_distribution
-- ----------------------------
ALTER TABLE "public"."power_distribution" ADD CONSTRAINT "power_distribution_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE "public"."product" ADD CONSTRAINT "sys_product_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table product_output
-- ----------------------------
ALTER TABLE "public"."product_output" ADD CONSTRAINT "product_output_pkey" PRIMARY KEY ("product_output_id");

-- ----------------------------
-- Primary Key structure for table rule_formula
-- ----------------------------
ALTER TABLE "public"."rule_formula" ADD CONSTRAINT "index_formula_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rule_formula_param
-- ----------------------------
ALTER TABLE "public"."rule_formula_param" ADD CONSTRAINT "index_formula_param_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rule_storage
-- ----------------------------
CREATE INDEX "idx_index_copy1" ON "public"."rule_storage" USING btree (
  "point_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "time_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rule_storage
-- ----------------------------
ALTER TABLE "public"."rule_storage" ADD CONSTRAINT "index_storage_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table setting_electricity_price
-- ----------------------------
ALTER TABLE "public"."setting_electricity_price" ADD CONSTRAINT "electricity_price_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table setting_electricity_price_date
-- ----------------------------
ALTER TABLE "public"."setting_electricity_price_date" ADD CONSTRAINT "electricity_price_date_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table storage_parameter
-- ----------------------------
ALTER TABLE "public"."storage_parameter" ADD CONSTRAINT "storage_parameter_pkey" PRIMARY KEY ("storage_id", "index_id");

-- ----------------------------
-- Primary Key structure for table svg_attach
-- ----------------------------
ALTER TABLE "public"."svg_attach" ADD CONSTRAINT "sys_equipmentfile_pkey" PRIMARY KEY ("node_id");

-- ----------------------------
-- Primary Key structure for table svg_setting
-- ----------------------------
ALTER TABLE "public"."svg_setting" ADD CONSTRAINT "sys_svg_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE "public"."sys_config" ADD CONSTRAINT "sys_config_pkey" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE "public"."sys_dept" ADD CONSTRAINT "sys_dept_pkey" PRIMARY KEY ("dept_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "public"."sys_dict_data" ADD CONSTRAINT "sys_dict_data_pkey" PRIMARY KEY ("dict_code");

-- ----------------------------
-- Indexes structure for table sys_dict_type
-- ----------------------------
CREATE INDEX "dict_type" ON "public"."sys_dict_type" USING btree (
  "dict_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "public"."sys_dict_type" ADD CONSTRAINT "sys_dict_type_pkey" PRIMARY KEY ("dict_id");

-- ----------------------------
-- Primary Key structure for table sys_enercoefficient
-- ----------------------------
ALTER TABLE "public"."sys_enercoefficient" ADD CONSTRAINT "sys_enercoefficient_pkey" PRIMARY KEY ("ecid");

-- ----------------------------
-- Primary Key structure for table sys_energy
-- ----------------------------
ALTER TABLE "public"."sys_energy" ADD CONSTRAINT "sys_energy_pkey" PRIMARY KEY ("enerid");

-- ----------------------------
-- Primary Key structure for table sys_energy_template
-- ----------------------------
ALTER TABLE "public"."sys_energy_template" ADD CONSTRAINT "sys_enerclass_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE "public"."sys_job" ADD CONSTRAINT "sys_job_pkey" PRIMARY KEY ("job_id", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table sys_job_log
-- ----------------------------
ALTER TABLE "public"."sys_job_log" ADD CONSTRAINT "sys_job_log_pkey" PRIMARY KEY ("job_log_id");

-- ----------------------------
-- Primary Key structure for table sys_logininfor
-- ----------------------------
ALTER TABLE "public"."sys_logininfor" ADD CONSTRAINT "sys_logininfor_pkey" PRIMARY KEY ("info_id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "sys_menu_pkey" PRIMARY KEY ("menu_id");

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE "public"."sys_notice" ADD CONSTRAINT "sys_notice_pkey" PRIMARY KEY ("notice_id");

-- ----------------------------
-- Primary Key structure for table sys_oper_log
-- ----------------------------
ALTER TABLE "public"."sys_oper_log" ADD CONSTRAINT "sys_oper_log_pkey" PRIMARY KEY ("oper_id");

-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE "public"."sys_post" ADD CONSTRAINT "sys_post_pkey" PRIMARY KEY ("post_id");

-- ----------------------------
-- Primary Key structure for table sys_price
-- ----------------------------
ALTER TABLE "public"."sys_price" ADD CONSTRAINT "sys_price_pkey" PRIMARY KEY ("priceid");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "sys_role_pkey" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sys_role_dept
-- ----------------------------
ALTER TABLE "public"."sys_role_dept" ADD CONSTRAINT "sys_role_dept_pkey" PRIMARY KEY ("role_id", "dept_id");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "public"."sys_role_menu" ADD CONSTRAINT "sys_role_menu_pkey" PRIMARY KEY ("role_id", "menu_id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table sys_user_post
-- ----------------------------
ALTER TABLE "public"."sys_user_post" ADD CONSTRAINT "sys_user_post_pkey" PRIMARY KEY ("user_id", "post_id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "public"."sys_user_role" ADD CONSTRAINT "sys_user_role_pkey" PRIMARY KEY ("user_id", "role_id");

/*
 Date: 21/05/2025 15:20:17
*/


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
-- Table structure for index_storage
-- ----------------------------
DROP TABLE IF EXISTS "public"."index_storage";
CREATE TABLE "public"."index_storage" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "index_id" varchar(36) COLLATE "pg_catalog"."default",
  "time_type" varchar(20) COLLATE "pg_catalog"."default",
  "calc_type" varchar(10) COLLATE "pg_catalog"."default",
  "calc_text" varchar(1200) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "is_pv_calc" int2
)
;
COMMENT ON COLUMN "public"."index_storage"."is_pv_calc" IS '是否计算尖峰平谷（0:否，1:是）';

-- ----------------------------
-- Records of index_storage
-- ----------------------------

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
  "update_by" varchar(30) COLLATE "pg_catalog"."default"
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
COMMENT ON TABLE "public"."policy" IS '政策法规表';

-- ----------------------------
-- Records of policy
-- ----------------------------

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
INSERT INTO "public"."sys_energy" VALUES ('自来水', '吨', 217, 'water', '否', 'admin', NULL, 'admin', NULL, '1', 40, 0.9428, NULL, 1.00, 1.0000, 'admin', '2024-12-07 14:05:58', 'admin', '2024-12-17 09:35:13', NULL);
INSERT INTO "public"."sys_energy" VALUES ('天然气', '立方米', 219, 'naturalgas', '否', 'admin', NULL, 'admin', NULL, '1', 41, 0.7143, NULL, 1.00, 1.0000, 'admin', '2024-12-07 14:07:20', 'admin', '2024-12-07 14:07:29', NULL);
INSERT INTO "public"."sys_energy" VALUES ('蒸汽', '立方米', 218, 'steam', '否', 'admin', NULL, 'admin', NULL, '1', 43, 12.1430, NULL, 1.00, 1.0000, 'admin', '2024-12-07 14:09:55', 'admin', '2024-12-07 17:17:08', NULL);
INSERT INTO "public"."sys_energy" VALUES ('压缩空气', '立方米', 220, 'compressedair', '否', 'admin', NULL, 'admin', NULL, '1', 44, 1.4571, NULL, 1.00, 1.0000, 'admin', '2024-12-07 14:10:38', 'admin', '2024-12-17 09:35:53', NULL);

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
INSERT INTO "public"."sys_user" VALUES (1, 103, 'admin', '管理员', '00', '', '', '0', '/profile/avatar/2025/02/10/微信图片_20250117220435_20250210160249A009.png', '$2a$10$n2nBzuKoFDfVG8Kpq7eYPejV./wO3L0vA4iOmPlUlWVD9.af6iTiW', '0', '0', '122.4.100.84', '2025-05-21 11:17:48.493', 'admin', '2018-03-16 11:33:00', 'admin', '2025-05-21 11:17:48.497389', '管理员', NULL, NULL);
INSERT INTO "public"."sys_user" VALUES (24, NULL, 'guestUser', '体验用户', '00', NULL, NULL, '0', '/profile/avatar/2025/02/25/avatar_20250225094402A004.png', '$2a$10$60J16xa47M7KCdz8xJ7Ak.SDbi0zQkabDcNgpO3bzLITZVgdJc2t6', '0', '0', '122.4.100.112', '2025-04-26 13:43:00.444', 'admin', '2024-12-04 10:44:29.111243', 'admin', '2025-04-28 16:42:38.023316', NULL, NULL, NULL);

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
-- Indexes structure for table index_storage
-- ----------------------------
CREATE INDEX "idx_index_copy1" ON "public"."index_storage" USING btree (
  "index_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "time_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table index_storage
-- ----------------------------
ALTER TABLE "public"."index_storage" ADD CONSTRAINT "index_storage_copy1_pkey" PRIMARY KEY ("id");

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

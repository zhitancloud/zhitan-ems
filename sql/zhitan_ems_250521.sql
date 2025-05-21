/*
 Date: 21/05/2025 11:50:56
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

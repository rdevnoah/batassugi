/*
 * 테이블 전체 삭제 
 */

-- 테이블 전체 삭제
DROP TABLE rent;
DROP TABLE recruit;
DROP TABLE available_crops;
DROP TABLE farm;
DROP TABLE trade_reply;
DROP TABLE trade_post;
DROP TABLE apply_seller;
DROP TABLE accuse;
DROP TABLE member_like_crops;
DROP TABLE crops_info;
DROP TABLE crops;
DROP TABLE member_info;
DROP TABLE spider_member;
DROP TABLE member_state;

-- 시퀀스 전체 삭제 
DROP sequence rent_SEQ;
DROP sequence recruit_SEQ;
DROP sequence farm_SEQ;
DROP sequence trade_reply_SEQ;
DROP sequence trade_post_SEQ;
DROP sequence apply_fammer_SEQ;
DROP sequence accuse_SEQ ;
DROP sequence crops_SEQ;
DROP sequence member_state_SEQ;
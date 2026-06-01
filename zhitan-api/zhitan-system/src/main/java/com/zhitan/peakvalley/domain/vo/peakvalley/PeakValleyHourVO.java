package com.zhitan.peakvalley.domain.vo.peakvalley;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * @author zhitan
 */
@Getter
@Setter
public class PeakValleyHourVO {
    List<PeakValleyHourDataVO> dataList;
    List<PeakValleyLineChatVO> lineChat;
    PeakValleyPieChatVO pieChat;
}

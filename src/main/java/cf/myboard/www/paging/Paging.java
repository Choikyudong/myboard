package cf.myboard.www.paging;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class Paging {

    private long nowPageNum; // 현재페이지
    private long showPageSize; // 한번에 보여지는 게시글 수
    private long rangePage; // 페이징 네비게이션의 변수

    public Paging() {
        this.nowPageNum = 1;
        this.showPageSize = 10;
        this.rangePage = 5;
    }

    public long getNowPageNum() {
        return nowPageNum;
    }

    public void setNowPageNum(long nowPageNum) {
        this.nowPageNum = nowPageNum;
    }

    public long getShowPageSize() {
        return showPageSize;
    }

    public void setShowPageSize(long showPageSize) {
        this.showPageSize = showPageSize;
    }

    public long getRangePage() {
        return rangePage;
    }

    public void setRangePage(long rangePage) {
        this.rangePage = rangePage;
    }

    @Override
    public String toString() {
        return "Paging{" +
                "nowPageNum=" + nowPageNum +
                ", showPageSize=" + showPageSize +
                ", rangePage=" + rangePage +
                '}';
    }
}

package cf.myboard.www.paging;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class Paging {

    private int nowPageNum; // 현재페이지
    private int showPageSize; // 한번에 보여지는 게시글 수
    private int rangePage; // 페이징 네비게이션의 변수

    public Paging() {
        this.nowPageNum = 1;
        this.showPageSize = 10;
        this.rangePage = 5;
    }

    public int getNowPageNum() {
        return nowPageNum;
    }

    public void setNowPageNum(int nowPageNum) {
        this.nowPageNum = nowPageNum;
    }

    public int getShowPageSize() {
        return showPageSize;
    }

    public void setShowPageSize(int showPageSize) {
        this.showPageSize = showPageSize;
    }

    public int getRangePage() {
        return rangePage;
    }

    public void setRangePage(int rangePage) {
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

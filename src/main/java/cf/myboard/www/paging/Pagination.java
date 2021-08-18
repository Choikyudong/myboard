package cf.myboard.www.paging;

public class Pagination  {

    private Paging paging; // 페이징 네비바에 적용시키기 위해서 정보를 페이징 정보를 가져온다.
    private int totalPage; // 전체페이지
    private int firstPage; // 처음페이지
    private int lastPage; // 마지막페이지
    private int firstIndex;

    public Pagination(Paging paging) {
        if(paging.getNowPageNum() < 1) {
            paging.setNowPageNum(1);
        }
        if (paging.getRangePage() < 1 || paging.getShowPageSize() > 100) {
            paging.setShowPageSize(10);
        }
        if (paging.getRangePage() < 5 || paging.getRangePage() > 20) {
            paging.setRangePage(10);
        }
        this.paging = paging;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
        if(totalPage > 0) {
            setPagination();
        }
    }

    private void setPagination() {
        totalPage = ((totalPage - 1) / paging.getShowPageSize()) + 1;
        if (paging.getNowPageNum() > totalPage) {
            paging.setNowPageNum(totalPage);
        }
        firstPage = ((paging.getNowPageNum() - 1) / paging.getRangePage()) * paging.getRangePage() + 1;
        lastPage = firstPage + paging.getRangePage() - 1;
        if (lastPage > totalPage) {
            lastPage = totalPage;
        }
        firstIndex = (paging.getNowPageNum() - 1) * paging.getShowPageSize();
    }

    @Override
    public String toString() {
        return "Pagination{" +
                "paging=" + paging +
                ", totalPage=" + totalPage +
                ", firstPage=" + firstPage +
                ", lastPage=" + lastPage +
                ", firstIndex=" + firstIndex +
                '}';
    }

    public Paging getPaging() {
        return paging;
    }

    public void setPaging(Paging paging) {
        this.paging = paging;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public int getFirstPage() {
        return firstPage;
    }

    public void setFirstPage(int firstPage) {
        this.firstPage = firstPage;
    }

    public int getLastPage() {
        return lastPage;
    }

    public void setLastPage(int lastPage) {
        this.lastPage = lastPage;
    }

    public int getFirstIndex() {
        return firstIndex;
    }

    public void setFirstIndex(int firstIndex) {
        this.firstIndex = firstIndex;
    }

}

package cf.myboard.www.domain;


import cf.myboard.www.paging.Pagination;
import cf.myboard.www.paging.Paging;

public class Common extends Paging {

    private Pagination pagination;

    public Pagination getPagination() {
        return pagination;
    }

    public void setPagination(Pagination pagination) {
        this.pagination = pagination;
    }
}

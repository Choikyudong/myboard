package cf.myboard.www.domain;

public class Reply extends Common {

    private long id;
    private long board_id;
    private String content;
    private String author;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public long getBoard_id() {
        return board_id;
    }

    public void setBoard_id(long board_id) {
        this.board_id = board_id;
    }

    @Override
    public String toString() {
        return "Reply{" +
                "id=" + id +
                ", board_id=" + board_id +
                ", content='" + content + '\'' +
                ", author='" + author + '\'' +
                '}';
    }
}

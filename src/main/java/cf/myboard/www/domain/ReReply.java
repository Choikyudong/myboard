package cf.myboard.www.domain;

public class ReReply {

    private long id;
    private long board_id;
    private long reply_id;
    private String content;
    private String author;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getReply_id() {
        return reply_id;
    }

    public void setReply_id(long reply_id) {
        this.reply_id = reply_id;
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
        return "ReReply{" +
                "id=" + id +
                ", board_id=" + board_id +
                ", reply_id=" + reply_id +
                ", content='" + content + '\'' +
                ", author='" + author + '\'' +
                '}';
    }
}

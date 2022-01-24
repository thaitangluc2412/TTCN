package bean;

import java.time.LocalDateTime;

public class ReviewDto {
    private String name;
    private String comment;
    private Integer rating;
    private LocalDateTime reviewDate;
    private String title;
    private String image;

    public ReviewDto() {
    }

    public ReviewDto(String name,
                     String comment,
                     Integer rating,
                     LocalDateTime reviewDate,
                     String title, String image) {
        this.name = name;
        this.comment = comment;
        this.rating = rating;
        this.reviewDate = reviewDate;
        this.title = title;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public LocalDateTime getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(LocalDateTime reviewDate) {
        this.reviewDate = reviewDate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "ReviewDetailWithUserNameDto{" +
               "name='" + name + '\'' +
               ", comment='" + comment + '\'' +
               ", rating=" + rating +
               ", reviewDate=" + reviewDate +
               ", tile='" + title + '\'' +
               ", image='" + image + '\'' +
               '}';
    }
}

package kr.or.kosta.blog.Article;

public interface ArticleDao {

	/** 게시글 작성 후 등록하기 */
	public void create(Article article) throws Exception;
	
	/** 게시글 수정하기 */
	public void udpate(Article article) throws Exception; 
	
	/** 게시글 삭제하기 */
	public void delete(Article article) throws Exception;
}

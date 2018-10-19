package kr.or.kosta.blog.Article;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

public class JdbcArticleDao implements ArticleDao{

	DataSource dataSource;

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	/** 게시글 작성 후 등록하기 */
	@Override
	public void create(Article article) throws Exception {
		
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		String sql = "INSERT INTO article \r\n" + 
				"            (article_id, \r\n" + 
				"             board_id, \r\n" + 
				"             writer, \r\n" + 
				"             subject, \r\n" + 
				"             content, \r\n" + 
				"             ip, \r\n" + 
				"             passwd, \r\n" + 
				"             group_no, \r\n" + 
				"             level_no, \r\n" + 
				"             order_no) \r\n" + 
				"VALUES      (article_id_seq.NEXTVAL, \r\n" + 
				"             1, \r\n" + 
				"             ?, \r\n" + //1, writer
				"             ?, \r\n" + //2, subject
				"             ?, \r\n" + //3, content
				"             ?, \r\n" + //4, ip
				"             ?, \r\n" + //5, passwd
				"             article_id_seq.CURRVAL, \r\n" + 
				"             ?, \r\n" + //6, levelno
				"             ?); "; //7, orderNo
		
		conn = dataSource.getConnection(); 
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, article.getWriter());
		pstmt.setString(2, article.getSubject());
		
	}
	
	/** 게시글 수정하기 */
	@Override
	public void udpate(Article article) throws Exception {
		
	}

	/** 게시글 삭제하기 */
	@Override
	public void delete(Article article) throws Exception {
		
	}

}

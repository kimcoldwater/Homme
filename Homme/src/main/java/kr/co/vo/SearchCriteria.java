package kr.co.vo;

public class SearchCriteria extends Criteria {
	
		
		private String searchType = "";
		private String keyword = "";
		private String cate="";

		public String getSearchType() {
			return searchType;
		}
		public void setSearchType(String searchType) {
			this.searchType = searchType;
		}
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}
		public String getCate() {
			return cate;
		}
		public void setCate(String cate) {
			this.cate = cate;
		}
		@Override
		public String toString() {
			return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + ", cate=" + cate + ", sorting="
					 + "]";
		}
		
		
	}

/*     */
package kr.co.util;

/*     */
/*     */ import java.io.File;
import java.util.ArrayList;
/*     */ import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/*     */ import java.util.Map;
/*     */ import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/*     */ import org.springframework.stereotype.Component;
/*     */ import org.springframework.web.multipart.MultipartFile;
/*     */ import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.controller.BoardController;
import kr.co.vo.BoardVO;
/*     */ import kr.co.vo.ItemVO;

/*     */
/*     */
/*     */
/*     */
/*     */
/*     */
/*     */ @Component
/*     */ public class FileUtils
/*     */ {
	/*     */ private static final String filePath = "C:\\mp\\file\\";
	private static final Logger logger = LoggerFactory.getLogger(FileUtils.class);

	/*     */
	/*     */ public Map<String, Object> itemMainImg(ItemVO itemVO, MultipartHttpServletRequest multipart)
			throws Exception {
		/* 23 */ MultipartFile multipartFile = multipart.getFile("itemMainImg");
		/* 24 */ String originalFileName = null;
		/* 25 */ String originalFileExtension = null;
		/* 26 */ String storedFileName = null;
		/*     */
		/* 28 */ Map<String, Object> itemMainImg = new HashMap<String, Object>();
		/*     */
		/* 30 */ int item_no = itemVO.getItem_no();
		/*     */
		/* 32 */ File file = new File("C:\\mp\\file\\");
		/* 33 */ if (!file.exists()) {
			/* 34 */ file.mkdirs();
			/*     */ }
		/*     */
		/* 37 */ originalFileName = multipartFile.getOriginalFilename();
		/* 38 */ originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
		/* 39 */ storedFileName = String.valueOf(getRandomString()) + originalFileExtension;
		/* 40 */ file = new File("C:\\mp\\file\\" + storedFileName);
		/* 41 */ multipartFile.transferTo(file);
		/* 42 */ itemMainImg.put("ITEM_NO", Integer.valueOf(item_no));
		/* 43 */ itemMainImg.put("IMG_ORGNAME", originalFileName);
		/* 44 */ itemMainImg.put("IMG_STRNAME", storedFileName);
		/* 45 */ itemMainImg.put("IMG_SIZE", Long.valueOf(multipartFile.getSize()));
		/*     */
		/* 47 */ return itemMainImg;
		/*     */ }

	/*     */
	/*     */
	/*     */ public Map<String, Object> itemSubImg(ItemVO itemVO, MultipartHttpServletRequest multipart)
			throws Exception {
		/* 52 */ MultipartFile multipartFile = multipart.getFile("itemSubImg");
		/* 53 */ String originalFileName = null;
		/* 54 */ String originalFileExtension = null;
		/* 55 */ String storedFileName = null;
		/*     */
		/* 57 */ Map<String, Object> itemSubImg = new HashMap<String, Object>();
		/*     */
		/* 59 */ int item_no = itemVO.getItem_no();
		/*     */
		/* 61 */ File file = new File("C:\\mp\\file\\");
		/* 62 */ if (!file.exists()) {
			/* 63 */ file.mkdirs();
			/*     */ }
		/*     */
		/* 66 */ originalFileName = multipartFile.getOriginalFilename();
		/* 67 */ originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
		/* 68 */ storedFileName = String.valueOf(getRandomString()) + originalFileExtension;
		/* 69 */ file = new File("C:\\mp\\file\\" + storedFileName);
		/* 70 */ multipartFile.transferTo(file);
		/* 71 */ itemSubImg.put("ITEM_NO", Integer.valueOf(item_no));
		/* 72 */ itemSubImg.put("IMG_ORGNAME", originalFileName);
		/* 73 */ itemSubImg.put("IMG_STRNAME", storedFileName);
		/* 74 */ itemSubImg.put("IMG_SIZE", Long.valueOf(multipartFile.getSize()));
		/*     */
		/* 76 */ return itemSubImg;
		/*     */ }

	/*     */
	/*     */
	/*     */
	/*     */
	/*     */
	/*     */
	/*     */
	/*     */
	/*     */
	/*     */
	/*     */
	/*     */
	/*     */ public String uploadImg(MultipartHttpServletRequest mpRequest) throws Exception {
		/* 91 */ MultipartFile multipartFile = null;
		/* 92 */ String originalFileName = null;
		/* 93 */ String originalFileExtension = null;
		/* 94 */ String storedFileName = null;
		/*     */
		/*     */
		/*     */
		/*     */
		/* 99 */ File file = new File("C:\\mp\\file\\");
		/* 100 */ if (!file.exists()) {
			/* 101 */ file.mkdirs();
			/*     */ }
		/*     */
		/* 104 */ multipartFile = mpRequest.getFile("upload");
		/*     */
		/* 106 */ originalFileName = multipartFile.getOriginalFilename();
		/* 107 */ originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
		/* 108 */ storedFileName = String.valueOf(getRandomString()) + originalFileExtension;
		/* 109 */ file = new File("C:\\mp\\file\\" + storedFileName);
		/* 110 */ multipartFile.transferTo(file);
		/* 111 */ String imgPath = "/img/" + storedFileName;
		/*     */
		/*     */
		/*     */
		/* 115 */ return imgPath;
		/*     */ }
	/*     */

	public List<Map<String, Object>> parseInsertFileInfo(BoardVO boardVO, MultipartHttpServletRequest mpRequest)
			throws Exception {
		Iterator<String> iterator = mpRequest.getFileNames();

		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		Map<String, Object> listMap = null;

		int b_no = boardVO.getB_no();
		logger.info("Filetuils b_no="+b_no);
		File file = new File(filePath);
		if (file.exists() == false) {
			file.mkdirs();
		}

		while (iterator.hasNext()) {
			multipartFile = mpRequest.getFile(iterator.next());
			if (multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = getRandomString() + originalFileExtension;

				file = new File(filePath + storedFileName);
				multipartFile.transferTo(file);
				listMap = new HashMap<String, Object>();
				listMap.put("IMG_B_NO", b_no);
				listMap.put("IMG_ORGNAME", originalFileName);
				listMap.put("IMG_STRNAME", storedFileName);
				listMap.put("IMG_SIZE", multipartFile.getSize());
				list.add(listMap);
			}
		}
		return list;
	}

	/*     */
	/*     */
	/*     */ public static String getRandomString() {
		/* 121 */ return UUID.randomUUID().toString().replaceAll("-", "");
		/*     */ }
	/*     */ }

/*
 * Location:
 * C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\c\\util\FileUtils.class
 * Java compiler version: 6 (50.0) JD-Core Version: 1.1.3
 */
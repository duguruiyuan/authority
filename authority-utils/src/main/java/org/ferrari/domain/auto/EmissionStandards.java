 /**     
   * @Create: Jul 11, 2009 5:06:20 PM     
   * @Description: TODO
   * @Company: 车马驿站
   * @author: 林宝玉 
   * @Copyright: (c) 2007 by 林宝玉.  
   * @version: 1.0   
   */ 
package org.ferrari.domain.auto;

import org.ferrari.utils.Code;
import org.ferrari.utils.CodeType;

 /**  
 * @Create: Jul 11, 2009 5:06:20 PM     
 * @Description: TODO
 * @see: org.ferrari.domain.auto
 * @modify by: 林宝玉 
 * @time: Jul 11, 2009 5:06:20 PM
 */
public class EmissionStandards extends CodeType {
	private static final long serialVersionUID = -3444959180957116288L;
	public final static EmissionStandards type = new EmissionStandards();
	public final static Code DEFAULT  = new Code(type, "排放标准", "排放标准");
	public final static Code ONE  = new Code(type, "欧II", "欧II");
	public final static Code TWO  = new Code(type, "欧III", "欧III");
	public final static Code THREE  = new Code(type, "欧IV", "欧IV");
}

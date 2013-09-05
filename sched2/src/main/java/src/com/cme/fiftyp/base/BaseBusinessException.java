package src.com.cme.fiftyp.base;

/**
 * Business Exception Class
 * 
 * @author CME
 * 
 */
public class BaseBusinessException extends Exception {

	private static final long serialVersionUID = 1L;
	protected int errorCode;
	/**
	 * 
	 */
	public BaseBusinessException() {
		super();
	}

	/**
	 * @param arg0
	 */
	public BaseBusinessException(String arg0) {
		super(arg0);
	}

	/**
	 * @param arg0
	 * @param arg1
	 */
	public BaseBusinessException(String arg0, Throwable arg1) {
		super(arg0, arg1);
	}

	/**
	 * @param arg0
	 */
	public BaseBusinessException(Throwable arg0) {
		super(arg0);
	}

	public int getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(int errorCode) {
		this.errorCode = errorCode;
	}
}

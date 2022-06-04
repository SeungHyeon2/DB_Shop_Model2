package servletTest;

public class Dto {
	private String ename;
	private String job;
	private String sal;

	public Dto() {
	 // TODO Auto-generated constructor stub
	 }

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getSal() {
		return sal;
	}

	public void setSal(String sal) {
		this.sal = sal;
	}

	public Dto(String ename, String job, String sal) {
	 super();
	 this.ename = ename;
	 this.job = job;
	 this.sal = sal;
	 }
}

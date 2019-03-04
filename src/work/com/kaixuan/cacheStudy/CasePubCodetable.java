package com.sample;


import java.io.Serializable;

public class CasePubCodetable implements Serializable {

  private static final long serialVersionUID = -2623983802374409979L;

  private String code;
  private String name;
  private String parentcode;
  private double orderid;
  private String codetable;
  private String validflag;
  private String codeId;
  private String datexc;
  private java.sql.Timestamp lastdate;


  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getParentcode() {
    return parentcode;
  }

  public void setParentcode(String parentcode) {
    this.parentcode = parentcode;
  }


  public double getOrderid() {
    return orderid;
  }

  public void setOrderid(double orderid) {
    this.orderid = orderid;
  }


  public String getCodetable() {
    return codetable;
  }

  public void setCodetable(String codetable) {
    this.codetable = codetable;
  }


  public String getValidflag() {
    return validflag;
  }

  public void setValidflag(String validflag) {
    this.validflag = validflag;
  }


  public String getCodeId() {
    return codeId;
  }

  public void setCodeId(String codeId) {
    this.codeId = codeId;
  }


  public String getDatexc() {
    return datexc;
  }

  public void setDatexc(String datexc) {
    this.datexc = datexc;
  }


  public java.sql.Timestamp getLastdate() {
    return lastdate;
  }

  public void setLastdate(java.sql.Timestamp lastdate) {
    this.lastdate = lastdate;
  }

}

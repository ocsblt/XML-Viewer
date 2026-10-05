<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version = '1.0' 
     xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
 <xsl:template match="/">
 <HTML>
 <BODY>
 <h2><center>OnSIS Batch File Results Summary</center></h2>
  <TABLE WIDTH="100%">
  <TR>
  <TD><h4>Academic Year/Année scolaire : <xsl:value-of select="//ACADEMIC_YEAR"/></h4></TD>
  <TD><h4>Submission Period/Période de présentation :  <xsl:value-of select="//SUBMISSION_PERIOD_TYPE"/></h4></TD>
  <TD><h4>File date/time/Date/heure du fichier : <xsl:value-of select="//DATE"/>                        
        -<xsl:value-of select="substring(//TIME,1,2)"/>:<xsl:value-of select="substring(//TIME,3,2)"/>:<xsl:value-of select="substring(//TIME,5,2)"/></h4></TD>
  </TR>
  <TR>
  <TD><h4>File Type/Type de fichier : <xsl:value-of select="//BATCH_TYPE"/></h4></TD>
  <TD><h4>File Id/Identification du fichier : <xsl:value-of select="//BATCH_FILE_ID"/></h4></TD>
  </TR>
  </TABLE>
  <xsl:for-each select="//DATA_ERROR_DETAILS">
	<xsl:for-each select="./ERROR">
	    <xsl:if test="./E_MESSAGE != 'Parent entry in error'">
		<br></br>
	        <xsl:choose>
		    <xsl:when test="name(../..) = 'HEADER'">
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Header</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_SUBMISSION'">
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>School Submission</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL'">
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>School <xsl:value-of select="../../SCHOOL_NUMBER"/></TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'CTCF'">
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>School <xsl:value-of select="../../SCHOOL_NUMBER"/></TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'CLASS'">
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Class for School <xsl:value-of select="../../../SCHOOL_NUMBER"/></TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SEGMENT'">
			<b>School/École</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/>, <b>Class/Classe</b>&#032; <xsl:value-of select="../../../CLASS_CODE"/>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Segment for Class</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'COURSE_CALENDAR'">
			<b>School/École</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Course Calendar</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'COURSE_CALENDAR_COURSE'">
			<b>School/École</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/>
			<b>, Academic Year/Année Scolaire</b>&#032; <xsl:value-of select="../../../COURSE_CALENDAR_ACADEMIC_YEAR"/>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
			<TD>Course Calendar Course</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'STUDENT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Student</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'PREV_PLAR'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>PLAR</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'NE_OPTION_SHEET'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
			<TD>NE-Option Sheet</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'NE_OPTION_SHEET_COURSE'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
			<TD>NE-Option Sheet Course</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'STUDENT_SCHOOL_ENROLMENT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Student School Enrolment</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'STUDENT_CLASS_ENROLMENT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/>;
			<b>Class/Classe</b>&#032; <xsl:value-of select="../../CLASS_CODE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Student Class Enrolment</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'AVERAGE_DAILY_ENROLMENT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../OEN"/>;
			<b>Course/Cours</b>&#032; <xsl:value-of select="../../../MINISTRY_DFND_CRS"/><br></br>
			<b>Course Offering Type/Mode d'enseignement du cours</b>&#032; <xsl:value-of select="../../COURSE_OFFERING_TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Average Daily Enrolment</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'NON_CREDIT_AVERAGE_DAILY_ENROLMENT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b>&#032; <xsl:value-of select="../../../../OEN"/>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Non-Credit Average Daily Enrolment</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'REMEDIAL_PROGRAM'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Remedial Program</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'E_OPTION_SHEET'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
			<TD>E-Option Sheet</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'E_OPTION_SHEET_COURSE'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
			<TD>E-Option Sheet Course</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SPECIAL_EDUCATION'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Special Education</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SECOND_LANGUAGE_PROGRAM'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Second Language Program</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'PLAR'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>PLAR</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'DIPLOMA'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Diploma</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'NE_DIPLOMA'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>NE Diploma</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'OTHER_CREDIT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Other Credit</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SWT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>SWT</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SWT_PROGRAM'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>SWT Program</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SWT_PROGRAM_BY_GENDER'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>SWT Program by Gender</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_INCIDENT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>School Incident</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
			<TD><xsl:value-of select="../../../SCHOOL_NUMBER"/></TD>
			<TD></TD>
			<TD></TD>
			<TD></TD>
			<TD></TD>
			<TD>School Incident</TD>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'STUDENT_INCIDENT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Student Incident</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'STUDENT_INFRACTION'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Student Infraction</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'STUDENT_OUTCOME'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Student Outcome</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SUSPENSION_EXPULSION_PROGRAM'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Suspension-Expulsion Program</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'NON_ACADEMIC_PROGRAM'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Non-Academic Program</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'LITERACY_AND_NUMERACY'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Literacy and Numeracy</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'GRADE'">
			<b>School/École</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Literacy And Numeracy Grade</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
			<xsl:when test="name(../..) = 'AVG_REPORT_CARD_GRADE'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Report Card Average Marks</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'REPORT_CARD'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Report Card</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>						
		    <xsl:when test="name(../..) = 'TERM'">
			<xsl:if test="name(../../..) = 'REPORT_CARD'"><b>School/École </b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/></xsl:if>
			<xsl:if test="name(../../..) = 'AVG_REPORT_CARD_GRADE'"><b>School/École</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/></xsl:if>
			<b> Student/élève: </b>&#032; <xsl:value-of select="../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<b> OEN/NISO </b><xsl:value-of select="../../../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD><xsl:if test="name(../../..) = 'REPORT_CARD'">Report Card </xsl:if><xsl:if test="name(../../..) = 'AVG_REPORT_CARD_GRADE'">Report Card Average Marks</xsl:if> Term</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SUBJECT_STRAND'">
		        <xsl:if test="name(../../../..) = 'REPORT_CARD'"><b>School/École</b>&#032; <xsl:value-of select="../../../../../../../SCHOOL_NUMBER"/>
			    <br><b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			    <xsl:value-of select="../../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			    <xsl:value-of select="../../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			    <b>OEN/NISO </b><xsl:value-of select="../../../../../../OEN"/></br>
				<br><b>Subject Strand Code/Code du domaine de la matière </b><xsl:value-of select="../../SUBJECT_STRAND_CODE"/></br><br></br>
                        </xsl:if>
			<xsl:if test="name(../../../..) = 'AVG_REPORT_CARD_GRADE'"><b>School/École</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/></xsl:if>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD><xsl:if test="name(../../../..) = 'REPORT_CARD'">Report Card </xsl:if><xsl:if test="name(../../../..) = 'AVG_REPORT_CARD_GRADE'">Report Card Average Marks</xsl:if> Subject Strand</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'LEARNING_SKILL'">
			<b>School/École</b>&#032; <xsl:value-of select="../../../../../../../SCHOOL_NUMBER"/>
		        <br><b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../../OEN"/></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Report Card Learning Skills</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_PROGRAM_OFFERED'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>School Program</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'PLAR_MATURE_REPORT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>PLAR Mature Report</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'PLAR_MATURE_EQ_COURSES'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>PLAR Mature Eq Courses</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'PLAR_MATURE_EQ_COUNT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>PLAR Mature Eq Count</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_EDUCATOR_ASSIGNMENT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<b>MEN/NME:</b>&#032; <xsl:value-of select="../../MEN"/> 
			<b>Board Employee Number/Numéro d'employé d conseil:</b>&#032; <xsl:value-of select="../../BOARD_EMPLOYEE_NUMBER"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>School Educator Assignment</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'INSTRUCTIONAL_TM'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>MEN/NME:</b>&#032; <xsl:value-of select="../../../MEN"/><br></br> 
			<b>Board Employee Number/Numéro d'employé d conseil:</b>&#032; <xsl:value-of select="../../../BOARD_EMPLOYEE_NUMBER"/> 
			<b>Instructional Time Type/Type d'enseignement:</b>&#032; <xsl:value-of select="../../INSTRUCTIONAL_TM_TYPE"/>, 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Instructional Time</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'CLASS_ASSIGNMENT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>MEN/NME:</b>&#032; <xsl:value-of select="../../../MEN"/><br></br> 
			<b>Board Employee Number/Numéro d'employé d conseil:</b>&#032; <xsl:value-of select="../../../BOARD_EMPLOYEE_NUMBER"/> 
			<b>Class Code/Code de la classe:</b>&#032; <xsl:value-of select="../../CLASS_CODE"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Class Assignment</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
 		    <xsl:when test="name(../..) = 'ASSIGNED_SUBJECT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>MEN/NME:</b>&#032; <xsl:value-of select="../../../MEN"/><br></br> 
			<b>Board Employee Number/Numéro d'employé d conseil:</b>&#032; <xsl:value-of select="../../../BOARD_EMPLOYEE_NUMBER"/> 
			<b>Subject/sujet:</b>&#032; 
				<xsl:value-of select="../../ELEMENTARY_SUBJECT_TYPE"/> 
				<xsl:value-of select="../../SECONDARY_SUBJECT_TYPE"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Assigned Subject</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
 		    <xsl:when test="name(../..) = 'ASSIGNED_GRADE'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>MEN/NME:</b>&#032; <xsl:value-of select="../../../../MEN"/><br></br> 
			<b>Board Employee Number/Numéro d'employé d conseil:</b>&#032; <xsl:value-of select="../../../../BOARD_EMPLOYEE_NUMBER"/> 
			<b>Subject/sujet:</b>&#032; 
				<xsl:value-of select="../../../ELEMENTARY_SUBJECT_TYPE"/>
				<xsl:value-of select="../../../SECONDARY_SUBJECT_TYPE"/><br></br>
			<b>Grade/année d'études:</b>&#032; <xsl:value-of select="../../GRADE_TYPE"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Assigned Grade</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
 		    <xsl:when test="name(../..) = 'TLA'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>MEN/NME:</b>&#032; <xsl:value-of select="../../../MEN"/><br></br> 
			<b>Board Employee Number/Numéro d'employé d conseil:</b>&#032; <xsl:value-of select="../../../BOARD_EMPLOYEE_NUMBER"/> 
			<b>Subject/sujet:</b>&#032; 
				<xsl:value-of select="../../ELEMENTARY_SUBJECT_TYPE"/> 
				<xsl:value-of select="../../SECONDARY_SUBJECT_TYPE"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>TLA</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SALEP'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>SALEP</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SHSM_PROGRAM'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
			<b>SHSM Program/Programme MHS</b>&#032; <xsl:value-of select="../../TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>SHSM Program</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SHSM_CERTIFICATION'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../OEN"/>;
			<b>SHSM Certification/Certification MHS</b>&#032; <xsl:value-of select="../../TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>SHSM Certification</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SHSM_COURSE'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../OEN"/>;
			<b>SHSM Course/Cours MHS</b>&#032; <xsl:value-of select="../../TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
				<TD>SHSM Certification</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_ENROLMENT_BY_GRADE'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<b>Language Type/Type de langue:</b>&#032; <xsl:value-of select="../../LANGUAGE_TYPE"/><br></br>
			<b>Grade Type/Type d'année d'études:</b>&#032; <xsl:value-of select="../../GRADE_TYPE"/><br></br>
			<b>Gender Type/Type de sexe:</b>&#032; <xsl:value-of select="../../GENDER_TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
				<TD>School Enrolment By Grade</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_ENROLMENT_BY_AGE'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<b>Language Type/Type de langue:</b>&#032; <xsl:value-of select="../../LANGUAGE_TYPE"/><br></br>
			<b>Age Category Type/Type de catégoriés d'âge:</b>&#032; <xsl:value-of select="../../AGE_CATEGORY_TYPE"/><br></br>
			<b>Gender Type/Type de sexe:</b>&#032; <xsl:value-of select="../../GENDER_TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
				<TD>School Enrolment By Age</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_ENROLMENT_BY_PERM_RES'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<b>Province/Pays:</b>&#032; <xsl:value-of select="../../PROVINCE"/><br></br>
			<b>Country/Province:</b>&#032; <xsl:value-of select="../../COUNTRY"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
				<TD>School Enrolment By Permanent residence</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_FSL_COUNT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<b>Grade Type/Type d'année d'études:</b>&#032; <xsl:value-of select="../../GRADE_TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
				<TD>School FSL Count</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_NL_COUNT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<b>SL Program Type/Type de programme de langue seconde:</b>&#032; <xsl:value-of select="../../SEC_LANG_PGM_TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
				<TD>School NL Count</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_ENRL_SPECIAL_EDU_PGM'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
				<TD>School Enrolment Special Education Program</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_ENRL_TRANS_RET_ADM'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
				<TD>School Enrolment, Transfers, Retirement and Admissions</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_ENRL_ADMISSIONS'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<b>Admission Type/Type d'inscription:</b>&#032; <xsl:value-of select="../../TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
				<TD>School Enrolment Admissions</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'BOARD_SUBMISSION'">
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Board Submission</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'EDUCATOR_ASSIGNMENT'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/><br></br>
			<b>MEN/NME:</b>&#032; <xsl:value-of select="../../MEN"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Board Educator Assignment</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'VIOLENT_INCIDENT'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/><br></br>
			<b>School/École:</b>&#032; <xsl:value-of select="../../SCHOOL_NUMBER"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Violent Incident</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'TPA_HEADER'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/><br></br>
			<b>MEN/NME:</b>&#032; <xsl:value-of select="../../MEN"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>TPA</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'TPA_DETAIL'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../../BOARD_NUMBER"/><br></br>
			<b>MEN/NME:</b>&#032; <xsl:value-of select="../../../MEN"/><br></br>
			<b>Appraisal Rating/Note de l'Évaluation:</b>&#032; <xsl:value-of select="../../APPRAISAL_RATING"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>TPA</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'PERSONNEL'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/><br></br>
			<b>School Level Type/Niveau de l'école:</b>&#032; <xsl:value-of select="../../SCHOOL_LEVEL_TYPE"/><br></br> 
			<b>Class Type/Catégorie de menbres du personnel:</b>&#032; <xsl:value-of select="../../STAFF_CTGRY_TYPE"/><br></br> 
			<b>Attendance Type/Année d'études:</b>&#032; <xsl:value-of select="../../ATTENDANCE_TYPE"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Board Personnel</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'EXCEPTIONAL_STU_TCHR_COUNT'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b> School Level Type/Niveau de l'école:</b>&#032; <xsl:value-of select="../../SCHOOL_LEVEL_TYPE"/><br></br> 
			<b>Exceptionality Type/Anomalie:</b>&#032; <xsl:value-of select="../../EXCEPTIONALITY_TYPE"/> 
			<b> Class Type/Type de classe:</b>&#032; <xsl:value-of select="../../CLASS_TYPE"/><br></br> 
			<b>Gender Type/Type de sexe:</b>&#032; <xsl:value-of select="../../GENDER_TYPE"/>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Teacher of Exceptional Pupils</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'CONTINUING_EDU_COUNT'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b> Course Type/Genre de cours:</b>&#032; <xsl:value-of select="../../CLASS_TYPE"/><br></br> 
			<b>Gender Type/Type de sexe:</b>&#032; <xsl:value-of select="../../GENDER_TYPE"/>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Continuing Education</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'CONTINUING_EDU_GRAD_COUNT'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b> Diploma Type/Type de diplômé:</b>&#032; <xsl:value-of select="../../DIPLOMA_TYPE"/><br></br> 
			<b>Gender Type/Type de sexe:</b>&#032; <xsl:value-of select="../../GENDER_TYPE"/>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Number Of Graduates in Continuing Education</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'LANGUAGE_PROGRAM_COUNT'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b>Language Type/Type de langue:</b>&#032; <xsl:value-of select="../../LANGUAGE_TYPE"/>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Languages Program Count</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'LANGUAGE_PROGRAM_TOD_COUNT'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b>Time of Day/Moment de la journée:</b>&#032; <xsl:value-of select="../../TIMEOFDAY_TYPE"/>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>International and Native Language Time of Day</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SPVSD_ALTLR_FOR_EXCUSED_PUP'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b>Age Category Type/Type de catégoriés d'âge:</b>&#032; <xsl:value-of select="../../AGE_CATEGORY_TYPE"/><br></br>
			<b>Grade Type/Type d'année d'études:</b>&#032; <xsl:value-of select="../../GRADE_TYPE"/><br></br>
			<b>Gender Type/Type de sexe:</b>&#032; <xsl:value-of select="../../GENDER_TYPE"/>
			<b>Category Type/Type de catégorié:</b>&#032; <xsl:value-of select="../../SPVSD_ALTLR_CTGRY_TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Supervised Alternative Learning fro Excused Pupils</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'NON_ATTENDANCE_AT_SCH_COUNT'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b>School Level Type/Niveau de l'école:</b>&#032; <xsl:value-of select="../../SCHOOL_LEVEL_TYPE"/><br></br> 
			<b>Gender Type/Type de sexe:</b>&#032; <xsl:value-of select="../../GENDER_TYPE"/><br></br>
			<b>Non Attendance Category/Catégorie de non-fréquentation:</b>&#032; <xsl:value-of select="../../NON_ATND_CTGRY_TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Home Schooling</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'TPA_MONITORING'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b>Monitoring Type/Type de ERPE:</b>&#032; <xsl:value-of select="../../TPA_MONITORING_TYPE"/><br></br> 
			<b>Academic Year/Année scolaire:</b>&#032; <xsl:value-of select="../../TPA_ACADEMIC_YEAR_TYPE"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>TPA Monitoring</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'TPA_APPRAISAL'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b>Appraisal Type/Type de évaluation:</b>&#032; <xsl:value-of select="../../TPA_MONITORING_TYPE"/><br></br> 
			<b>School Level Type/Niveau de l'école:</b>&#032; <xsl:value-of select="../../SCHOOL_LEVEL_TYPE"/><br></br> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>TPA Appraisals</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'TPA_TERMINATION'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b>Termination Type/Type de cessation:</b>&#032; <xsl:value-of select="../../TPA_TERMINATION_TYPE"/><br></br> 
			<b>School Level Type/Niveau de l'école:</b>&#032; <xsl:value-of select="../../SCHOOL_LEVEL_TYPE"/><br></br> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>TPA Terminations</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'NTIP_NOTATION'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b>Gender Type/Type de sexe:</b>&#032; <xsl:value-of select="../../GENDER_TYPE"/><br></br>
			<b>Attendance Type/Année d'études:</b>&#032; <xsl:value-of select="../../ATTENDANCE_TYPE"/> 
			<b>NTIP Notation Type/PIPNPE notation:</b>&#032; <xsl:value-of select="../../NTIP_NOTATION_TYPE"/><br></br> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>NTIP Notation</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'NTIP_RETENTION'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b>Attendance Type/Année d'études:</b>&#032; <xsl:value-of select="../../ATTENDANCE_TYPE"/> 
			<b>Retention Type/Type de rétention:</b>&#032; <xsl:value-of select="../../NTIP_RETENTION_TYPE"/><br></br> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>NTIP Retention</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'NTIP_ASSIGNMENT'">
			<b>Board/Conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/>
			<b>School Level Type/Niveau de l'école:</b>&#032; <xsl:value-of select="../../SCHOOL_LEVEL_TYPE"/><br></br> 
			<b>Gender Type/Type de sexe:</b>&#032; <xsl:value-of select="../../GENDER_TYPE"/><br></br>
			<b>Assignment Type/Type de affectation:</b>&#032; <xsl:value-of select="../../NTIP_ASSIGNMENT_TYPE"/><br></br> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>NTIP Assignment</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'EDUCATOR'">
			<b>First Name/Prénom:</b>&#032; <xsl:value-of select="../../FIRST_NAME"/><br></br> 
			<b>Last Name/Nom de famille:</b>&#032; <xsl:value-of select="../../LAST_NAME"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Educator</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'CAREER_EXPERIENCE'">
			<b>First Name/Prénom:</b>&#032; <xsl:value-of select="../../../FIRST_NAME"/><br></br> 
			<b>Last Name/Nom de famille:</b>&#032; <xsl:value-of select="../../../LAST_NAME"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Educator Career Experience</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'BOARD'">
			<b>Board Number/Numéro du conseil:</b>&#032; <xsl:value-of select="../../BOARD_NUMBER"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Board</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'BOARD_PERSONNEL'">
			<b>Board Number/Numéro du conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/><br></br>
			<b>MEN/NME:</b>&#032; <xsl:value-of select="../../MEN"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Board Personnel</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'BOARD_SITE'">
			<b>Board Number/Numéro du conseil:</b>&#032; <xsl:value-of select="../../../BOARD_NUMBER"/><br></br>
			<b>Site Name/Nom du conseil:</b>&#032; <xsl:value-of select="../../NAME"/> 
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Board Site</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'BOARD_SITE_ADDRESS'">
			<b>Board Number/Numéro du conseil:</b>&#032; <xsl:value-of select="../../../../BOARD_NUMBER"/><br></br>
			<b>Site Name/Nom du conseil:</b>&#032; <xsl:value-of select="../../../NAME"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Board Site Address</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'COUNSIL'">
			<b>School/École:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<b>Council Name/Conseil d'école:</b>&#032; <xsl:value-of select="../../NAME"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>School Council</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_PERSONNEL'">
			<b>School/École:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>Council Name/Conseil d'école:</b>&#032; <xsl:value-of select="../../../NAME"/><br></br>
			<b>First Name/Prénom:</b>&#032; <xsl:value-of select="../../FIRST_NAME"/> 
			<b> Last Name/Nom de famille:</b>&#032; <xsl:value-of select="../../LAST_NAME"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>School Personnel</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_SITE'">
			<b>School/École:</b>&#032; <xsl:value-of select="../../../SCHOOL_NUMBER"/><br></br>
			<b>Site Name/Nom de site:</b>&#032; <xsl:value-of select="../../NAME"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>School Site</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'SCHOOL_SITE_ADDRESS'">
			<b>School/École:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>Site Name/Nom de site:</b>&#032; <xsl:value-of select="../../../NAME"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>School Site Address</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'STUDENT_NON_ENROLMENT'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../OEN"/><br></br>
 			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
 			<TR>
 				<TH><b><center>Section</center></b></TH>
 				<TH><b><center>Field Name/Nom du champ</center></b></TH>
 				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
 				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
 			<TR>
			<TD>Student Non Enrolment</TD>
			<TD><xsl:value-of select="./FIELD_NAME"/></TD>
			<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
			<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
			<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>
		    <xsl:when test="name(../..) = 'STU_EARLY_YR_EXPERIENCE'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Student Early Years Experience</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>						
		    <xsl:when test="name(../..) = 'STU_EARLY_YR_QUESTION'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Student Early Years Question</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>						
		    <xsl:when test="name(../..) = 'STU_EARLY_YR_CC_PRG_HEADER'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Student Early Years Child Care Program Header</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>						
		    <xsl:when test="name(../..) = 'STU_EARLY_YR_CC_PRG_DETAIL'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Student Early Years Child Care Program Detail</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>						
		    <xsl:when test="name(../..) = 'STU_EARLY_YR_CC_ACTIVITY_REG'">
			<b>School/école:</b>&#032; <xsl:value-of select="../../../../../../SCHOOL_NUMBER"/><br></br>
			<b>Student/élève:</b>&#032; <xsl:value-of select="../../../../../STUDENT_LEGAL_LAST_NAME"/>, 
			<xsl:value-of select="../../../../../STUDENT_LEGAL_GIVEN_NAME"/>&#032;
			<xsl:value-of select="../../../../../STUDENT_LEGAL_SECOND_NAME"/>; 
			<b>OEN/NISO </b><xsl:value-of select="../../../../../OEN"/><br></br>
			<TABLE BORDER="1" WIDTH="100%" FRAME="box">
			<TR>
				<TH><b><center>Section</center></b></TH>
				<TH><b><center>Field Name/Nom du champ</center></b></TH>
				<TH><b><center>Field Value/Valeur du champ</center></b></TH>
 				<TH><b><center>Message Code/Code du message</center></b></TH>
				<TH><b><center>Error Message/Message d`erreur</center></b></TH>
			</TR>
			<TR>
				<TD>Student Early Years Activity</TD>
				<TD><xsl:value-of select="./FIELD_NAME"/></TD>
				<TD><xsl:value-of select="./FIELD_VALUE"/></TD>
				<TD><xsl:value-of select="./MESSAGE_CODE"/></TD>
				<TD><xsl:value-of select="./E_MESSAGE"/></TD>
			</TR>
			</TABLE>
		    </xsl:when>						
 		    <xsl:otherwise>
			Element name(../..) not found
    		        <TD></TD>
  		    </xsl:otherwise>
	       </xsl:choose>
	    </xsl:if>
	</xsl:for-each>
     </xsl:for-each>
  </BODY>
  </HTML>
  </xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios/><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->
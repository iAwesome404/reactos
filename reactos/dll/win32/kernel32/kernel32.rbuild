<?xml version="1.0"?>
<!DOCTYPE group SYSTEM "../../../tools/rbuild/project.dtd">
<module name="kernel32" type="win32dll" crt="dll" baseaddress="${BASEADDRESS_KERNEL32}" installbase="system32" installname="kernel32.dll">
	<importlibrary definition="kernel32.pspec" />
	<include base="kernel32">.</include>
	<include base="kernel32" root="intermediate">.</include>
	<include base="kernel32">include</include>
	<include base="ReactOS">include/reactos/subsys</include>
	<library>wine</library>
	<library>pseh</library>
	<library>normalize</library>
	<library>ntdll</library>
	<library>win32ksys</library>
	<define name="_KERNEL32_" />
	<redefine name="_WIN32_WINNT">0x0600</redefine>
	<dependency>errcodes</dependency>
	<!-- See http://gcc.gnu.org/bugzilla/show_bug.cgi?id=38269
	<pch>k32.h</pch>
	-->
	<group compilerset="gcc">
		<!-- See http://gcc.gnu.org/bugzilla/show_bug.cgi?id=38054#c7 -->
		<compilerflag>-fno-unit-at-a-time</compilerflag>
		<compilerflag compiler="cxx">-fno-exceptions</compilerflag>
		<compilerflag compiler="cxx">-fno-rtti</compilerflag>
	</group>
	<directory name="debug">
		<file>debugger.c</file>
		<file>output.c</file>
	</directory>
	<directory name="except">
		<file>except.c</file>
	</directory>
	<directory name="file">
		<file>backup.c</file>
		<file>bintype.c</file>
		<file>cnotify.c</file>
		<file>copy.c</file>
		<file>create.c</file>
		<file>curdir.c</file>
		<file>delete.c</file>
		<file>deviceio.c</file>
		<file>dir.c</file>
		<file>dosdev.c</file>
		<file>file.c</file>
		<file>find.c</file>
		<file>hardlink.c</file>
		<file>iocompl.c</file>
		<file>lfile.c</file>
		<file>lock.c</file>
		<file>mailslot.c</file>
		<file>move.c</file>
		<file>npipe.c</file>
		<file>pipe.c</file>
		<file>rw.c</file>
		<file>tape.c</file>
		<file>volume.c</file>
	</directory>
	<directory name="mem">
		<file>global.c</file>
		<file>heap.c</file>
		<file>isbad.c</file>
		<file>local.c</file>
		<file>procmem.c</file>
		<file>resnotify.c</file>
		<file>section.c</file>
		<file>virtual.c</file>
	</directory>
	<directory name="misc">
		<file>actctx.c</file>
		<file>atom.c</file>
		<file>chartype.c</file>
		<file>collation.c</file>
		<file>casemap.c</file>
		<file>comm.c</file>
		<file>commdcb.c</file>
		<file>computername.c</file>
		<file>console.c</file>
		<file>dllmain.c</file>
		<file>env.c</file>
		<file>error.c</file>
		<file>fold.c</file>
		<file>format_msg.c</file>
		<file>handle.c</file>
		<file>lang.c</file>
		<file>ldr.c</file>
		<file>lzexpand.c</file>
		<file>muldiv.c</file>
		<file>nls.c</file>
		<file>perfcnt.c</file>
		<file>power.c</file>
		<file>recovery.c</file>
		<file>res.c</file>
		<file>sortkey.c</file>
		<file>stubs.c</file>
		<file>sysinfo.c</file>
		<file>time.c</file>
		<file>timerqueue.c</file>
		<file>toolhelp.c</file>
		<file>version.c</file>
	</directory>
	<directory name="process">
		<file>cmdline.c</file>
		<file>procsup.c</file>
		<file>job.c</file>
		<file>proc.c</file>
		<file>session.c</file>
	</directory>
	<directory name="string">
		<file>lstring.c</file>
	</directory>
	<directory name="synch">
		<file>condvar.c</file>
		<file>critical.c</file>
		<file>event.c</file>
		<file>mutex.c</file>
		<file>sem.c</file>
		<file>timer.c</file>
		<file>wait.c</file>
	</directory>
	<directory name="thread">
		<file>fiber.c</file>
		<file>fls.c</file>
		<file>thread.c</file>
		<file>tls.c</file>
	</directory>
	<directory name="misc">
		<file>lcformat.c</file>
		<file>profile.c</file>
		<file>utils.c</file>
	</directory>
	<directory name="thread">
		<if property="ARCH" value="i386">
			<directory name="i386">
				<file>fiber.S</file>
				<file>thread.S</file>
			</directory>
		</if>
	</directory>
	<directory name="misc">
		<file>icustubs.cpp</file>
	</directory>
	<file>kernel32.rc</file>
</module>

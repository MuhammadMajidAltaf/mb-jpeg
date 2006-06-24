#################################################################
# Makefile generated by Xilinx Platform Studio 
# Project:D:\mb-jpeg\system.xmp
#################################################################

XILINX_EDK_DIR = C:/EDK

SYSTEM = system

MHSFILE = system.mhs

MSSFILE = system.mss

FPGA_ARCH = virtex2p

DEVICE = xc2vp30ff896-7

LANGUAGE = vhdl

SEARCHPATHOPT =  -lp D:/XilinxXUP/lib/

SUBMODULE_OPT = 

PLATGEN_OPTIONS = -p $(DEVICE) -lang $(LANGUAGE) $(SEARCHPATHOPT) $(SUBMODULE_OPT)

LIBGEN_OPTIONS = -mhs $(MHSFILE) -p $(DEVICE) $(SEARCHPATHOPT) \
                   $(MICROBLAZE_0_LIBG_OPT)

VPGEN_OPTIONS = -p $(DEVICE) $(SEARCHPATHOPT)

DECODER_OUTPUT_DIR = decoder
DECODER_OUTPUT = $(DECODER_OUTPUT_DIR)/executable.elf

MICROBLAZE_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop.elf
PPC405_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc405/ppc_bootloop.elf
PPC440_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc440/ppc440_bootloop.elf
BOOTLOOP_DIR = bootloops

MICROBLAZE_0_BOOTLOOP = $(BOOTLOOP_DIR)/microblaze_0.elf
MICROBLAZE_0_XMDSTUB = microblaze_0/code/xmdstub.elf

BRAMINIT_ELF_FILES =  $(DECODER_OUTPUT) 
BRAMINIT_ELF_FILE_ARGS =   -pe microblaze_0 $(DECODER_OUTPUT) 

ALL_USER_ELF_FILES = $(DECODER_OUTPUT) 

SIM_CMD = vsim

BEHAVIORAL_SIM_SCRIPT = simulation/behavioral/$(SYSTEM).do

STRUCTURAL_SIM_SCRIPT = simulation/structural/$(SYSTEM).do

TIMING_SIM_SCRIPT = simulation/timing/$(SYSTEM).do

DEFAULT_SIM_SCRIPT = $(BEHAVIORAL_SIM_SCRIPT)

MIX_LANG_SIM_OPT = -mixed yes

SIMGEN_OPTIONS = -p $(DEVICE) -lang $(LANGUAGE) $(SEARCHPATHOPT) $(SUBMODULE_OPT) $(BRAMINIT_ELF_FILE_ARGS) $(MIX_LANG_SIM_OPT)  -s mti

MICROBLAZE_0_XMDSTUB = microblaze_0/code/xmdstub.elf

LIBRARIES =  \
       microblaze_0/lib/libxil.a 
VPEXEC = virtualplatform/vpexec.exe

LIBSCLEAN_TARGETS = microblaze_0_libsclean 

PROGRAMCLEAN_TARGETS = decoder_programclean 

CORE_STATE_DEVELOPMENT_FILES = 

WRAPPER_NGC_FILES = implementation/microblaze_0_wrapper.ngc \
implementation/mb_opb_wrapper.ngc \
implementation/debug_module_wrapper.ngc \
implementation/ilmb_wrapper.ngc \
implementation/dlmb_wrapper.ngc \
implementation/dlmb_cntlr_wrapper.ngc \
implementation/ilmb_cntlr_wrapper.ngc \
implementation/lmb_bram_wrapper.ngc \
implementation/rs232_uart_1_wrapper.ngc \
implementation/sysace_compactflash_wrapper.ngc \
implementation/leds_4bit_wrapper.ngc \
implementation/dipsws_4bit_wrapper.ngc \
implementation/pushbuttons_5bit_wrapper.ngc \
implementation/dcm_0_wrapper.ngc \
implementation/data_bram_0_wrapper.ngc \
implementation/data_bram_if_cntlr_0_wrapper.ngc \
implementation/data_bram_1_wrapper.ngc \
implementation/data_bram_if_cntlr_1_wrapper.ngc

POSTSYN_NETLIST = implementation/$(SYSTEM).ngc

SYSTEM_BIT = implementation/$(SYSTEM).bit

DOWNLOAD_BIT = implementation/download.bit

SYSTEM_ACE = implementation/$(SYSTEM).ace

UCF_FILE = data/system.ucf

BMM_FILE = implementation/$(SYSTEM).bmm

BITGEN_UT_FILE = etc/bitgen.ut

XFLOW_OPT_FILE = etc/fast_runtime.opt
XFLOW_DEPENDENCY = __xps/xpsxflow.opt $(XFLOW_OPT_FILE)

FPGA_IMP_DEPENDENCY = $(BMM_FILE) $(POSTSYN_NETLIST) $(UCF_FILE) $(BITGEN_UT_FILE) $(XFLOW_DEPENDENCY)

#################################################################
# SOFTWARE APPLICATION DECODER
#################################################################

DECODER_SOURCES = decoder/decoder.c 

DECODER_HEADERS = 

DECODER_CC = mb-gcc
DECODER_CC_SIZE = mb-size
DECODER_CC_OPT = -O2
DECODER_CFLAGS = -D__MICROBLAZE -D__XUPV2P
DECODER_CC_SEARCH = # -B
DECODER_LIBPATH = -L./microblaze_0/lib/ # -L
DECODER_INCLUDES = -I./microblaze_0/include/ # -I
DECODER_LFLAGS = # -l
DECODER_CC_PREPROC_FLAG = # -Wp,
DECODER_CC_ASM_FLAG = # -Wa,
DECODER_CC_LINKER_FLAG = # -Wl,
DECODER_LINKER_SCRIPT = 
DECODER_LINKER_SCRIPT_FLAG = #-Wl,-T -Wl,$(DECODER_LINKER_SCRIPT) 
DECODER_CC_DEBUG_FLAG =  -g 
DECODER_CC_PROFILE_FLAG = # -pg
DECODER_CC_GLOBPTR_FLAG= # -mxl-gp-opt
DECODER_MODE = executable
DECODER_LIBG_OPT = -$(DECODER_MODE) microblaze_0
DECODER_CC_SOFTMUL_FLAG= -mno-xl-soft-mul 
DECODER_CC_START_ADDR_FLAG= -Wl,-defsym -Wl,_TEXT_START_ADDR=0x50
DECODER_CC_STACK_SIZE_FLAG=  # -Wl,-defsym -Wl,_STACK_SIZE=
DECODER_CC_HEAP_SIZE_FLAG=  # -Wl,-defsym -Wl,_HEAP_SIZE=
DECODER_OTHER_CC_FLAGS= $(DECODER_CC_GLOBPTR_FLAG)  \
                  $(DECODER_CC_START_ADDR_FLAG) $(DECODER_CC_STACK_SIZE_FLAG) $(DECODER_CC_HEAP_SIZE_FLAG)  \
                  $(DECODER_CC_SOFTMUL_FLAG)  \
                  $(DECODER_CC_PREPROC_FLAG) $(DECODER_CC_ASM_FLAG) $(DECODER_CC_LINKER_FLAG)  \
                  $(DECODER_LINKER_SCRIPT_FLAG) $(DECODER_CC_DEBUG_FLAG) $(DECODER_CC_PROFILE_FLAG) 

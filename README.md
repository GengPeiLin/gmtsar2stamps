## gmtsar2stamps
# This is a set of programs that enable you to run StaMPS with output file from GMTSAR or GMT5SAR
# It has been tested on ERS and ENVISAT and ALOS-1 data.
# Xiaopeng Tong, University of Washington, Seattle, Feb 2016

# Steps:
1. run dispersion.csh in the SLC/ folder to make amplitude dispersion index (full resolution).
2. modify filter.csh to generate interferograms with real.grd and imag.grd file (full resolution).
3. make a stack/ folder parallel to intf/, raw/, topo/ and SLC/
4. run link.bash to move all the real.grd and imag.grd into stack/
5. modify/run cut.bash to crop the real.grd and imag.grd to appropriate size and region
6. link the scatter.grd to stack/
7. modify/run mt_extract_info_gmtsar
8. modify/run mt_extract_cands_gmtsar
9. start matlab/stamps in stack/ and run stamps(1,8)

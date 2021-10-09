#!/bin/sh
skip=49

tab='   '
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
[root@0fdf20b750bb workshop]# vim rhel8.sh
[root@0fdf20b750bb workshop]# vim rhel8.sh
[root@0fdf20b750bb workshop]# cat rhel8.sh
#!/bin/sh
skip=49

tab='   '
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�~aarhel8.sh�X]o�0}��U�
H@Jկm�/]�VkK�V��4MipI����-Tڏ�㸐�8Mxh���8�ޜK�d=����0!�zL;�8����3
                                                               5Q��1p6E�����0���ԕv�F_�6���M��7�3�'9
                                                                                                   ��3��'�(��B��[-h�.�Չ,>
                                                                                                                         -��:����ߺ�>D�r�2w�E���62$Vcg����`_�z�%���Sb��kÙ5ƯV�BVT(/���0ߙ�.�@#Ki��I��
�j��K���bE�aE��u����Bdl��Uh�=y��p�Z����ܵ�X��^
����4����W��Ph
              eV��ID_B������h�<��_Α��RWQ4�˔�Q-�:�� t&1��;�(�ac���b�fǢ\�e��e_�-�����ΏJ�Eϣ���U�����rV��f��\$G�EeE�T$G����Iip-�巜�V%���[l)�+��oy��8���aJ���3
                                                        

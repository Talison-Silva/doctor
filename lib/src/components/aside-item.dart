import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';


class AsideItem extends StatefulWidget {
  final String text;
  final IconData icon;
  final IconData iconOutline;
  final String go;

  const AsideItem({
    Key? key,
    required this.text,
    required this.icon,
    required this.iconOutline,
    required this.go,
  }):super(key:key);

  @override
  State<AsideItem> createState() => _AsideItemState();
}

class _AsideItemState extends State<AsideItem> {
  bool _listFirts = false;

  @override
  Widget build(BuildContext context){
    /*
    GestureDetector
    onTap:(){
      widget.navigate(widget.text);
    },

    Container(
      height:45,
      color: _listFirts? Color(0xFF333333): Colors.transparent,
      child:Padding(
        padding: const EdgeInsets.all(10),
        child:Row(
          children:[
            Container(
              width:40,
              height:28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:_listFirts? Color(0xFF484848): Colors.transparent,
              ),
              child:_listFirts? Icon(
                widget.icon,
                color: Color(0xFFF8F8FA),
                size: 20,
                semanticLabel: 'Text to announce in accessibility modes',
              ):Icon(
                widget.iconOutline,
                color: Color(0xFFF8F8FA),
                size: 20,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
            SizedBox(
              width:6,
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 14,
              )
            ),
          ],
        ),
      ),
    ),
    */
    if ("/${widget.go}" == GoRouterState.of(context).uri.toString()){
      return Container(
        height:45,
        color: Color(0xFF383838),
        child:Padding(
          padding: const EdgeInsets.all(10),
          child:Row(
            children:[
              Container(
                width:40,
                height:28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color:Color(0xFF525252),
                ),
                child:_listFirts? Icon(
                  widget.icon,
                  color: Color(0xFFF8F8FA),
                  size: 20,
                  semanticLabel: 'Text to announce in accessibility modes',
                ):Icon(
                  widget.iconOutline,
                  color: Color(0xFFF8F8FA),
                  size: 20,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              SizedBox(
                width:6,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 14,
                )
              ),
            ],
          ),
        ),
      );
    }else{
      return MouseRegion(
        onEnter: (details) => setState(() => _listFirts = true),
        onExit: (details) => setState(() {
          _listFirts = false;
        }),
        child: GestureDetector(
          onTap:(){
            context.goNamed(widget.go);
          },
          child:Container(
            height:45,
            color: _listFirts? Color(0xFF333333): Colors.transparent,
            child:Padding(
              padding: const EdgeInsets.all(10),
              child:Row(
                children:[
                  Container(
                    width:40,
                    height:28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color:_listFirts? Color(0xFF484848): Colors.transparent,
                    ),
                    child:_listFirts? Icon(
                      widget.icon,
                      color: Color(0xFFF8F8FA),
                      size: 20,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ):Icon(
                      widget.iconOutline,
                      color: Color(0xFFF8F8FA),
                      size: 20,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                  SizedBox(
                    width:6,
                  ),
                  Text(
                    widget.text,
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 14,
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

  }
}

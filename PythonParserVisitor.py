# Generated from PythonParser.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .PythonParser import PythonParser
else:
    from PythonParser import PythonParser

# This class defines a complete generic visitor for a parse tree produced by PythonParser.

class PythonParserVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by PythonParser#code.
    def visitCode(self, ctx:PythonParser.CodeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#stat.
    def visitStat(self, ctx:PythonParser.StatContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#break_stat.
    def visitBreak_stat(self, ctx:PythonParser.Break_statContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#continue_stat.
    def visitContinue_stat(self, ctx:PythonParser.Continue_statContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#pass_stat.
    def visitPass_stat(self, ctx:PythonParser.Pass_statContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#return_stat.
    def visitReturn_stat(self, ctx:PythonParser.Return_statContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#condicional.
    def visitCondicional(self, ctx:PythonParser.CondicionalContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#loop_while.
    def visitLoop_while(self, ctx:PythonParser.Loop_whileContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#loop_for.
    def visitLoop_for(self, ctx:PythonParser.Loop_forContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#for_param_list.
    def visitFor_param_list(self, ctx:PythonParser.For_param_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#func.
    def visitFunc(self, ctx:PythonParser.FuncContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#func_call.
    def visitFunc_call(self, ctx:PythonParser.Func_callContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#param_list.
    def visitParam_list(self, ctx:PythonParser.Param_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#param.
    def visitParam(self, ctx:PythonParser.ParamContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#keywordfunc_call.
    def visitKeywordfunc_call(self, ctx:PythonParser.Keywordfunc_callContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#arg_list.
    def visitArg_list(self, ctx:PythonParser.Arg_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#expr.
    def visitExpr(self, ctx:PythonParser.ExprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonParser#query.
    def visitQuery(self, ctx:PythonParser.QueryContext):
        return self.visitChildren(ctx)



del PythonParser
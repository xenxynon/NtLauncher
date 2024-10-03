.class final Lx1/n$a$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx1/n$a;->a(Lx1/n;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Li6/m0;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.IParser$parserAsync$3$1"
    f = "IParser.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lx1/n;

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:Landroid/view/View;

.field final synthetic k:Landroid/view/ViewGroup;

.field final synthetic l:Lx1/e;

.field final synthetic m:Lw1/a;

.field final synthetic n:Lx1/m;


# direct methods
.method constructor <init>(Lx1/n;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx1/n;",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Lq5/d<",
            "-",
            "Lx1/n$a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx1/n$a$b;->h:Lx1/n;

    iput-object p2, p0, Lx1/n$a$b;->i:Landroid/content/Context;

    iput-object p3, p0, Lx1/n$a$b;->j:Landroid/view/View;

    iput-object p4, p0, Lx1/n$a$b;->k:Landroid/view/ViewGroup;

    iput-object p5, p0, Lx1/n$a$b;->l:Lx1/e;

    iput-object p6, p0, Lx1/n$a$b;->m:Lw1/a;

    iput-object p7, p0, Lx1/n$a$b;->n:Lx1/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance p1, Lx1/n$a$b;

    iget-object v1, p0, Lx1/n$a$b;->h:Lx1/n;

    iget-object v2, p0, Lx1/n$a$b;->i:Landroid/content/Context;

    iget-object v3, p0, Lx1/n$a$b;->j:Landroid/view/View;

    iget-object v4, p0, Lx1/n$a$b;->k:Landroid/view/ViewGroup;

    iget-object v5, p0, Lx1/n$a$b;->l:Lx1/e;

    iget-object v6, p0, Lx1/n$a$b;->m:Lw1/a;

    iget-object v7, p0, Lx1/n$a$b;->n:Lx1/m;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lx1/n$a$b;-><init>(Lx1/n;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)V

    return-object p1
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lx1/n$a$b;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lx1/n$a$b;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lx1/n$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lx1/n$a$b;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lx1/n$a$b;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lx1/n$a$b;->h:Lx1/n;

    iget-object p1, p0, Lx1/n$a$b;->i:Landroid/content/Context;

    iget-object v3, p0, Lx1/n$a$b;->j:Landroid/view/View;

    iget-object v4, p0, Lx1/n$a$b;->k:Landroid/view/ViewGroup;

    iget-object v5, p0, Lx1/n$a$b;->l:Lx1/e;

    iget-object v6, p0, Lx1/n$a$b;->m:Lw1/a;

    iget-object v7, p0, Lx1/n$a$b;->n:Lx1/m;

    iput v2, p0, Lx1/n$a$b;->g:I

    move-object v2, p1

    move-object v8, p0

    invoke-interface/range {v1 .. v8}, Lx1/n;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

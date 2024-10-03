.class final Lq4/c$b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq4/c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nothing.launcher.setting.iconpack.IconPackListAdapter$onBindViewHolder$1$1$2$1"
    f = "IconPackListAdapter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lq4/c;

.field final synthetic i:Lr4/a;

.field final synthetic j:I


# direct methods
.method constructor <init>(Lq4/c;Lr4/a;ILq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq4/c;",
            "Lr4/a;",
            "I",
            "Lq5/d<",
            "-",
            "Lq4/c$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq4/c$b$a;->h:Lq4/c;

    iput-object p2, p0, Lq4/c$b$a;->i:Lr4/a;

    iput p3, p0, Lq4/c$b$a;->j:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 2
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

    new-instance p1, Lq4/c$b$a;

    iget-object v0, p0, Lq4/c$b$a;->h:Lq4/c;

    iget-object v1, p0, Lq4/c$b$a;->i:Lr4/a;

    iget p0, p0, Lq4/c$b$a;->j:I

    invoke-direct {p1, v0, v1, p0, p2}, Lq4/c$b$a;-><init>(Lq4/c;Lr4/a;ILq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lq4/c$b$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lq4/c$b$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lq4/c$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lq4/c$b$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lq4/c$b$a;->g:I

    if-nez v0, :cond_3

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lq4/c$b$a;->h:Lq4/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p1

    const-string v0, "currentList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/a;

    invoke-virtual {v2}, Lr4/a;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lr4/a;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lr4/a;->g(Z)V

    move-object v1, v0

    :cond_2
    iget-object p1, p0, Lq4/c$b$a;->h:Lq4/c;

    invoke-static {p1, v1}, Lq4/c;->b(Lq4/c;Lr4/a;)I

    move-result p1

    iget-object v0, p0, Lq4/c$b$a;->i:Lr4/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr4/a;->g(Z)V

    iget-object v0, p0, Lq4/c$b$a;->h:Lq4/c;

    iget p0, p0, Lq4/c$b$a;->j:I

    invoke-static {v0, p1, p0}, Lq4/c;->c(Lq4/c;II)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

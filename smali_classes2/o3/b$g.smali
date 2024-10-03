.class final Lo3/b$g;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo3/b;->N(Landroid/content/Context;Ljava/util/HashSet;)V
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
    c = "com.nothing.launcher.iconloader.icons.IconPackManager$tryRemovePackages$1"
    f = "IconPackManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Lo3/b;

.field final synthetic j:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/HashSet;Lo3/b;Landroid/content/Context;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lo3/b;",
            "Landroid/content/Context;",
            "Lq5/d<",
            "-",
            "Lo3/b$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo3/b$g;->h:Ljava/util/HashSet;

    iput-object p2, p0, Lo3/b$g;->i:Lo3/b;

    iput-object p3, p0, Lo3/b$g;->j:Landroid/content/Context;

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

    new-instance p1, Lo3/b$g;

    iget-object v0, p0, Lo3/b$g;->h:Ljava/util/HashSet;

    iget-object v1, p0, Lo3/b$g;->i:Lo3/b;

    iget-object p0, p0, Lo3/b$g;->j:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p0, p2}, Lo3/b$g;-><init>(Ljava/util/HashSet;Lo3/b;Landroid/content/Context;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lo3/b$g;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lo3/b$g;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lo3/b$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lo3/b$g;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lo3/b$g;->g:I

    if-nez v0, :cond_4

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/x;

    invoke-direct {p1}, Lkotlin/jvm/internal/x;-><init>()V

    iget-object v0, p0, Lo3/b$g;->h:Ljava/util/HashSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lo3/b$g;->i:Lo3/b;

    iget-object v3, p0, Lo3/b$g;->j:Landroid/content/Context;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Lo3/b;->D()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SYSTEM_ICONS"

    invoke-virtual {v2, v3, v5, v1}, Lo3/b;->O(Landroid/content/Context;Ljava/lang/String;Z)Z

    const-string v5, "IconPackManager"

    const-string v6, "tryRemovePackages: reset icon pack to SYSTEM"

    invoke-static {v5, v6}, Ly3/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v2, v4}, Lo3/b;->c(Lo3/b;Ljava/lang/String;)V

    iget-boolean v5, p1, Lkotlin/jvm/internal/x;->g:Z

    if-nez v5, :cond_0

    const-string v5, "com.nothing.icon"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p1, Lkotlin/jvm/internal/x;->g:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p1, Lkotlin/jvm/internal/x;->g:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lo3/b$g;->i:Lo3/b;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lo3/b;->z(Ljava/lang/Boolean;Z)Z

    :cond_3
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

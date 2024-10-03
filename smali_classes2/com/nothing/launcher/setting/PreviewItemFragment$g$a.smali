.class final Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/PreviewItemFragment$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nothing.launcher.setting.PreviewItemFragment$onViewCreated$2$1"
    f = "PreviewItemFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field private synthetic h:Ljava/lang/Object;

.field final synthetic i:Lcom/nothing/launcher/setting/PreviewItemFragment;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/setting/PreviewItemFragment;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->i:Lcom/nothing/launcher/setting/PreviewItemFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 1
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

    new-instance v0, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;

    iget-object p0, p0, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->i:Lcom/nothing/launcher/setting/PreviewItemFragment;

    invoke-direct {v0, p0, p2}, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;-><init>(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)V

    iput-object p1, v0, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->h:Ljava/lang/Object;

    return-object v0
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

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->g:I

    if-nez v0, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->h:Ljava/lang/Object;

    check-cast p1, Li6/m0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a$a;

    iget-object v0, p0, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->i:Lcom/nothing/launcher/setting/PreviewItemFragment;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6}, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a$a;-><init>(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    new-instance v3, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a$b;

    iget-object v0, p0, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->i:Lcom/nothing/launcher/setting/PreviewItemFragment;

    invoke-direct {v3, v0, v6}, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a$b;-><init>(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    new-instance v3, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a$c;

    iget-object p0, p0, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a;->i:Lcom/nothing/launcher/setting/PreviewItemFragment;

    invoke-direct {v3, p0, v6}, Lcom/nothing/launcher/setting/PreviewItemFragment$g$a$c;-><init>(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)V

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

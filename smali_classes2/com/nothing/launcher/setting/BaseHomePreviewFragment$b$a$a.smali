.class final Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Lt4/g;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.launcher.setting.BaseHomePreviewFragment$subscribeUI$1$1$1$1"
    f = "BaseHomePreviewFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field synthetic h:Ljava/lang/Object;

.field final synthetic i:Lcom/nothing/launcher/setting/BaseHomePreviewFragment;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/BaseHomePreviewFragment;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/setting/BaseHomePreviewFragment;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;->i:Lcom/nothing/launcher/setting/BaseHomePreviewFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lt4/g;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt4/g;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

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

    new-instance v0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;

    iget-object p0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;->i:Lcom/nothing/launcher/setting/BaseHomePreviewFragment;

    invoke-direct {v0, p0, p2}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;-><init>(Lcom/nothing/launcher/setting/BaseHomePreviewFragment;Lq5/d;)V

    iput-object p1, v0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt4/g;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;->a(Lt4/g;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;->g:I

    if-nez v0, :cond_2

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;->h:Ljava/lang/Object;

    check-cast p1, Lt4/g;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b$a$a;->i:Lcom/nothing/launcher/setting/BaseHomePreviewFragment;

    invoke-static {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->a(Lcom/nothing/launcher/setting/BaseHomePreviewFragment;)Ln4/h;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "previewAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p1}, Lt4/g;->e()[I

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0, p1}, Ln4/h;->a(I)V

    :cond_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class final Lg4/g$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/g;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
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
    c = "com.nothing.launcher.model.HiddenAppsViewModel$bindAllApplications$1"
    f = "HiddenAppsViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lg4/g;

.field final synthetic i:[Lcom/android/launcher3/model/data/AppInfo;


# direct methods
.method constructor <init>(Lg4/g;[Lcom/android/launcher3/model/data/AppInfo;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/g;",
            "[",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "Lq5/d<",
            "-",
            "Lg4/g$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg4/g$b;->h:Lg4/g;

    iput-object p2, p0, Lg4/g$b;->i:[Lcom/android/launcher3/model/data/AppInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

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

    new-instance p1, Lg4/g$b;

    iget-object v0, p0, Lg4/g$b;->h:Lg4/g;

    iget-object p0, p0, Lg4/g$b;->i:[Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {p1, v0, p0, p2}, Lg4/g$b;-><init>(Lg4/g;[Lcom/android/launcher3/model/data/AppInfo;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lg4/g$b;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lg4/g$b;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lg4/g$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lg4/g$b;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lg4/g$b;->g:I

    if-nez v0, :cond_1

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindAllApplications: editableHiddenApps = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg4/g$b;->h:Lg4/g;

    invoke-static {v0}, Lg4/g;->f(Lg4/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HiddenAppsViewModel"

    invoke-static {v0, p1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lg4/g$b;->h:Lg4/g;

    invoke-static {p1}, Lg4/g;->f(Lg4/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg4/g;->v(Ljava/util/List;)V

    iget-object p1, p0, Lg4/g$b;->h:Lg4/g;

    invoke-static {p1}, Lg4/g;->c(Lg4/g;)Lkotlinx/coroutines/flow/u;

    move-result-object p1

    iget-object p0, p0, Lg4/g$b;->i:[Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/u;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

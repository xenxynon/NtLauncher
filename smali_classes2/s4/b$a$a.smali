.class final Ls4/b$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls4/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Lv3/a;",
        ">;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.launcher.setting.iconpack.viewmodel.IconPackListViewModel$1$1"
    f = "IconPackListViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field synthetic h:Ljava/lang/Object;

.field final synthetic i:Ls4/b;


# direct methods
.method constructor <init>(Ls4/b;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls4/b;",
            "Lq5/d<",
            "-",
            "Ls4/b$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ls4/b$a$a;->i:Ls4/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ConcurrentHashMap;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lv3/a;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ls4/b$a$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Ls4/b$a$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Ls4/b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Ls4/b$a$a;

    iget-object p0, p0, Ls4/b$a$a;->i:Ls4/b;

    invoke-direct {v0, p0, p2}, Ls4/b$a$a;-><init>(Ls4/b;Lq5/d;)V

    iput-object p1, v0, Ls4/b$a$a;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Ls4/b$a$a;->a(Ljava/util/concurrent/ConcurrentHashMap;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Ls4/b$a$a;->g:I

    if-nez v0, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ls4/b$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lq3/a;->a:Lq3/a;

    invoke-virtual {v1}, Lq3/a;->d()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v2}, Lo3/b$b;->a()Lo3/b;

    move-result-object v2

    invoke-virtual {v2}, Lo3/b;->D()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pickedIconPackId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IconPackListViewModel"

    invoke-static {v4, v3}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ls4/b$a$a;->i:Ls4/b;

    invoke-static {v3, v0}, Ls4/b;->a(Ls4/b;Ljava/util/ArrayList;)V

    iget-object v3, p0, Ls4/b$a$a;->i:Ls4/b;

    invoke-static {v3, v1, p1, v0}, Ls4/b;->b(Ls4/b;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V

    iget-object v3, p0, Ls4/b$a$a;->i:Ls4/b;

    invoke-static {v3, v2, v1, p1, v0}, Ls4/b;->c(Ls4/b;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V

    iget-object p0, p0, Ls4/b$a$a;->i:Ls4/b;

    invoke-static {p0}, Ls4/b;->f(Ls4/b;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

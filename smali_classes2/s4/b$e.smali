.class final Ls4/b$e;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls4/b;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Landroidx/lifecycle/MutableLiveData<",
        "Ljava/util/List<",
        "+",
        "Lr4/a;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Ls4/b;


# direct methods
.method constructor <init>(Ls4/b;)V
    .locals 0

    iput-object p1, p0, Ls4/b$e;->g:Ls4/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/MutableLiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lr4/a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iget-object p0, p0, Ls4/b$e;->g:Ls4/b;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Li6/m0;

    move-result-object v1

    invoke-static {}, Li6/b1;->a()Li6/i0;

    move-result-object v2

    new-instance v4, Ls4/b$e$a;

    const/4 v3, 0x0

    invoke-direct {v4, p0, v3}, Ls4/b$e$a;-><init>(Ls4/b;Lq5/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ls4/b$e;->a()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

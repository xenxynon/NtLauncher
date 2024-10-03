.class public final Lx1/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lx1/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Bundle;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lx1/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lx1/p;


# direct methods
.method public constructor <init>(Lx1/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lx1/p$a;->f:Lx1/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lx1/p$a;->a:Landroid/util/SparseArray;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lx1/p$a;->b:Landroid/os/Bundle;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lx1/p$a;->c:Landroid/util/SparseArray;

    const/4 p1, -0x1

    iput p1, p0, Lx1/p$a;->d:I

    invoke-static {}, Lo5/j;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lx1/p$a;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lx1/j;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lx1/p$a;->a:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lx1/p$a;->e:Ljava/util/List;

    return-object p0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lx1/p$a;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method public final d()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lx1/l;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lx1/p$a;->c:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lx1/p$a;->d:I

    return p0
.end method

.method public final f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lx1/p$a;->e:Ljava/util/List;

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lx1/p$a;->d:I

    return-void
.end method

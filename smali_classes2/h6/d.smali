.class final Lh6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg6/g<",
        "Le6/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Ly5/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Ln5/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILy5/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Ly5/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Ln5/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/d;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lh6/d;->b:I

    iput p3, p0, Lh6/d;->c:I

    iput-object p4, p0, Lh6/d;->d:Ly5/p;

    return-void
.end method

.method public static final synthetic b(Lh6/d;)Ly5/p;
    .locals 0

    iget-object p0, p0, Lh6/d;->d:Ly5/p;

    return-object p0
.end method

.method public static final synthetic c(Lh6/d;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lh6/d;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic d(Lh6/d;)I
    .locals 0

    iget p0, p0, Lh6/d;->c:I

    return p0
.end method

.method public static final synthetic e(Lh6/d;)I
    .locals 0

    iget p0, p0, Lh6/d;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le6/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lh6/d$a;

    invoke-direct {v0, p0}, Lh6/d$a;-><init>(Lh6/d;)V

    return-object v0
.end method

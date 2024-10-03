.class final Le2/g$d;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/g;->M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedImageView"
    f = "SimulatedImageView.kt"
    l = {
        0x59
    }
    m = "setScaleType"
.end annotation


# instance fields
.field synthetic g:Ljava/lang/Object;

.field final synthetic h:Le2/g;

.field i:I


# direct methods
.method constructor <init>(Le2/g;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/g;",
            "Lq5/d<",
            "-",
            "Le2/g$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/g$d;->h:Le2/g;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le2/g$d;->g:Ljava/lang/Object;

    iget p1, p0, Le2/g$d;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le2/g$d;->i:I

    iget-object p1, p0, Le2/g$d;->h:Le2/g;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Le2/g;->D(Le2/g;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class final Le2/t$d;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/t;->w(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedView"
    f = "SimulatedView.kt"
    l = {
        0x87
    }
    m = "setStateListAnimator"
.end annotation


# instance fields
.field synthetic g:Ljava/lang/Object;

.field final synthetic h:Le2/t;

.field i:I


# direct methods
.method constructor <init>(Le2/t;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/t;",
            "Lq5/d<",
            "-",
            "Le2/t$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/t$d;->h:Le2/t;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le2/t$d;->g:Ljava/lang/Object;

    iget p1, p0, Le2/t$d;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le2/t$d;->i:I

    iget-object p1, p0, Le2/t$d;->h:Le2/t;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Le2/t;->c(Le2/t;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
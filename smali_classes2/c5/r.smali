.class public final Lc5/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lc5/h;

.field private final b:Lc5/a;


# direct methods
.method public constructor <init>(Lc5/h;Lc5/a;)V
    .locals 1

    const-string v0, "hue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chroma"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/r;->a:Lc5/h;

    iput-object p2, p0, Lc5/r;->b:Lc5/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/graphics/cam/Cam;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "sourceColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc5/r;->a:Lc5/h;

    invoke-interface {v0, p1}, Lc5/h;->a(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v0

    iget-object p0, p0, Lc5/r;->b:Lc5/a;

    invoke-interface {p0, p1}, Lc5/a;->a(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide p0

    double-to-float v0, v0

    double-to-float p0, p0

    invoke-static {v0, p0}, Lc5/p;->a(FF)[I

    move-result-object p0

    const-string p1, "of(hue.toFloat(), chroma.toFloat())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo5/c;->z([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

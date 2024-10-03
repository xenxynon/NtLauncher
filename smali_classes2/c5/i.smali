.class public final Lc5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/h;


# instance fields
.field private final a:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lc5/i;->a:D

    return-void
.end method


# virtual methods
.method public a(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 3

    const-string v0, "sourceColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc5/f;->i:Lc5/f$a;

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result p1

    float-to-double v1, p1

    iget-wide p0, p0, Lc5/i;->a:D

    add-double/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Lc5/f$a;->k(D)D

    move-result-wide p0

    return-wide p0
.end method

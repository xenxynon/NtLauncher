.class public final Lcom/nothing/cardhost/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardhost/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardhost/e$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/nothing/cardhost/e$b;Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardhost/e$b;->b(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    new-instance p0, Landroid/graphics/Rect;

    const/16 p1, 0x15

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

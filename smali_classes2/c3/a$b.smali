.class public final Lc3/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/a;
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

    invoke-direct {p0}, Lc3/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/animation/PathInterpolator;
    .locals 0

    invoke-static {}, Lc3/a;->c()Landroid/view/animation/PathInterpolator;

    move-result-object p0

    return-object p0
.end method

.class final Lt1/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lt1/e$a;)V
    .locals 0

    invoke-direct {p0}, Lt1/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom([BII)[B
    .locals 0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

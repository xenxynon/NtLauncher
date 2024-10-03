.class public final Ly2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/a;

    invoke-direct {v0}, Ly2/a;-><init>()V

    sput-object v0, Ly2/a;->a:Ly2/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Z
    .locals 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1e
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final b()Z
    .locals 2
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x21
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

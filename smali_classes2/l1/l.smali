.class public final Ll1/l;
.super Ll1/j;
.source "SourceFile"


# static fields
.field public static final a:Ll1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll1/l;

    invoke-direct {v0}, Ll1/l;-><init>()V

    sput-object v0, Ll1/l;->a:Ll1/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ll1/j;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    instance-of p0, p1, Ll1/l;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 0

    const-class p0, Ll1/l;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

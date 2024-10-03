.class public final Lz4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/g;

    invoke-direct {v0}, Lz4/g;-><init>()V

    sput-object v0, Lz4/g;->a:Lz4/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    invoke-virtual {p0}, Lz4/g;->b()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    int-to-float p0, p1

    mul-float/2addr v0, p0

    const/4 p0, 0x2

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v0}, La6/a;->b(F)I

    move-result p0

    return p0
.end method

.method public final b()F
    .locals 0

    const p0, 0x3f770a3d    # 0.965f

    return p0
.end method

.method public final c(F)F
    .locals 0

    invoke-virtual {p0}, Lz4/g;->b()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

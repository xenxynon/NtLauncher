.class public final synthetic Lcom/android/launcher3/anim/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/anim/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/anim/q;

    invoke-direct {v0}, Lcom/android/launcher3/anim/q;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/q;->a:Lcom/android/launcher3/anim/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->b(F)F

    move-result p0

    return p0
.end method

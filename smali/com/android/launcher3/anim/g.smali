.class public final synthetic Lcom/android/launcher3/anim/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/anim/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/anim/g;

    invoke-direct {v0}, Lcom/android/launcher3/anim/g;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/g;->a:Lcom/android/launcher3/anim/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    check-cast p2, Landroid/animation/Animator;

    invoke-interface {p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
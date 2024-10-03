.class public abstract Lcom/android/launcher3/anim/PropertySetter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

.field protected static final NO_OP:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/anim/PropertySetter$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/PropertySetter$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Landroid/animation/Animator;)V
.end method

.method public setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;F",
            "Landroid/animation/TimeInterpolator;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    invoke-virtual {p2, p1, p3}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    :cond_0
    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public setViewBackgroundColor(Landroid/view/View;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object p0
.end method

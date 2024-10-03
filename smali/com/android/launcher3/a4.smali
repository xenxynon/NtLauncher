.class public final synthetic Lcom/android/launcher3/a4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b$b;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a4;->a:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/TaskInfo;)I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/a4;->a:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    invoke-static {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->a(Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;Landroid/app/TaskInfo;)I

    move-result p0

    return p0
.end method

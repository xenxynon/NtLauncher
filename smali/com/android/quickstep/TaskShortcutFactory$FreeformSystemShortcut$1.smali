.class Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut$1;
.super Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->startActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

.field final synthetic val$taskBounds:Landroid/graphics/Rect;

.field final synthetic val$taskId:I

.field final synthetic val$thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;Landroid/os/Handler;ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut$1;->this$0:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

    iput p3, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut$1;->val$taskId:I

    iput-object p4, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut$1;->val$thumbnail:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut$1;->val$taskBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    iget v1, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut$1;->val$taskId:I

    iget-object v2, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut$1;->val$thumbnail:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut$1;->val$taskBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

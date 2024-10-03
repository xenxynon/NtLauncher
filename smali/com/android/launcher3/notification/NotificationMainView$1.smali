.class Lcom/android/launcher3/notification/NotificationMainView$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationMainView;

.field final synthetic val$outlineRadius:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationMainView;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView$1;->this$0:Lcom/android/launcher3/notification/NotificationMainView;

    iput p2, p0, Lcom/android/launcher3/notification/NotificationMainView$1;->val$outlineRadius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView$1;->this$0:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationMainView;->access$000(Lcom/android/launcher3/notification/NotificationMainView;)Landroid/graphics/Rect;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/notification/NotificationMainView$1;->val$outlineRadius:F

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

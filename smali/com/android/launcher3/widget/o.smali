.class public final synthetic Lcom/android/launcher3/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/widget/WidgetsBottomSheet;

.field public final synthetic h:Landroid/widget/TableRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;Landroid/widget/TableRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/o;->g:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    iput-object p2, p0, Lcom/android/launcher3/widget/o;->h:Landroid/widget/TableRow;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/o;->g:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    iget-object p0, p0, Lcom/android/launcher3/widget/o;->h:Landroid/widget/TableRow;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->a(Lcom/android/launcher3/widget/WidgetsBottomSheet;Landroid/widget/TableRow;Lcom/android/launcher3/model/WidgetItem;)V

    return-void
.end method

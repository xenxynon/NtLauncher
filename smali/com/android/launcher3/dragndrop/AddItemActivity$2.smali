.class Lcom/android/launcher3/dragndrop/AddItemActivity$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/AddItemActivity;->applyWidgetItemAsync(Ljava/util/function/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/launcher3/model/WidgetItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

.field final synthetic val$itemProvider:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/util/function/Supplier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->val$itemProvider:Ljava/util/function/Supplier;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/launcher3/model/WidgetItem;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->val$itemProvider:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/WidgetItem;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->doInBackground([Ljava/lang/Void;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/launcher3/model/WidgetItem;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->access$000(Lcom/android/launcher3/dragndrop/AddItemActivity;)Lcom/android/launcher3/widget/WidgetCell;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$2;->onPostExecute(Lcom/android/launcher3/model/WidgetItem;)V

    return-void
.end method

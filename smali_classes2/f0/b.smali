.class public final synthetic Lf0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/android/launcher3/DeviceProfile;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lf0/b;->b:Lcom/android/launcher3/DeviceProfile;

    iput p3, p0, Lf0/b;->c:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lf0/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lf0/b;->b:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lf0/b;->c:I

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->a(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;ILcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0
.end method

.class public final synthetic Lp3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/icons/BaseIconFactory;

.field public final synthetic b:Lp3/c;

.field public final synthetic c:Landroid/content/pm/ApplicationInfo;

.field public final synthetic d:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/BaseIconFactory;Lp3/c;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/b;->a:Lcom/android/launcher3/icons/BaseIconFactory;

    iput-object p2, p0, Lp3/b;->b:Lp3/c;

    iput-object p3, p0, Lp3/b;->c:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lp3/b;->d:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp3/b;->a:Lcom/android/launcher3/icons/BaseIconFactory;

    iget-object v1, p0, Lp3/b;->b:Lp3/c;

    iget-object v2, p0, Lp3/b;->c:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lp3/b;->d:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2, p0}, Lp3/c;->b(Lcom/android/launcher3/icons/BaseIconFactory;Lp3/c;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

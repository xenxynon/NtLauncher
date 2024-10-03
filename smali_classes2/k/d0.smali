.class public final synthetic Lk/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/icons/IconProvider;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/content/pm/LauncherActivityInfo;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconProvider;ZLandroid/content/pm/LauncherActivityInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/d0;->a:Lcom/android/launcher3/icons/IconProvider;

    iput-boolean p2, p0, Lk/d0;->b:Z

    iput-object p3, p0, Lk/d0;->c:Landroid/content/pm/LauncherActivityInfo;

    iput p4, p0, Lk/d0;->d:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lk/d0;->a:Lcom/android/launcher3/icons/IconProvider;

    iget-boolean v1, p0, Lk/d0;->b:Z

    iget-object v2, p0, Lk/d0;->c:Landroid/content/pm/LauncherActivityInfo;

    iget p0, p0, Lk/d0;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/icons/IconProvider;->d(Lcom/android/launcher3/icons/IconProvider;ZLandroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lk/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Landroid/content/pm/LauncherActivityInfo;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/LauncherActivityInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b0;->a:Landroid/content/pm/LauncherActivityInfo;

    iput p2, p0, Lk/b0;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk/b0;->a:Landroid/content/pm/LauncherActivityInfo;

    iget p0, p0, Lk/b0;->b:I

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/IconProvider;->a(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lk/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/icons/IconProvider;

.field public final synthetic h:Landroid/content/pm/LauncherActivityInfo;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconProvider;Landroid/content/pm/LauncherActivityInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/e0;->g:Lcom/android/launcher3/icons/IconProvider;

    iput-object p2, p0, Lk/e0;->h:Landroid/content/pm/LauncherActivityInfo;

    iput p3, p0, Lk/e0;->i:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lk/e0;->g:Lcom/android/launcher3/icons/IconProvider;

    iget-object v1, p0, Lk/e0;->h:Landroid/content/pm/LauncherActivityInfo;

    iget p0, p0, Lk/e0;->i:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/icons/IconProvider;->b(Lcom/android/launcher3/icons/IconProvider;Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

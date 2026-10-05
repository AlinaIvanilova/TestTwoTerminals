document.getElementById('fetchBtn').addEventListener('click', async () => {
    const resultElement = document.getElementById('result');
    resultElement.textContent = 'Завантаження...';

    try {
        const response = await fetch('https://PROBA.onrender.com/hello');
        if (!response.ok) throw new Error('Помилка HTTP: ' + response.status);
        const data = await response.json();
        resultElement.textContent = data.message;
    } catch (error) {
        resultElement.textContent = 'Помилка: ' + error.message;
    }
});